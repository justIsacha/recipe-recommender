from flask import Flask, render_template, request, jsonify
import mysql.connector
from db import get_db_connection
from flask_cors import CORS

app = Flask(__name__)
CORS(app, origins=["http://127.0.0.1:5500", "http://localhost:5500"])  # <-- Specify your frontend origin

# Home route
@app.route("/")
def home():
    return "Hello, Flask is working! 🚀"

# Get all recipes
@app.route("/recipes", methods=["GET"])
def get_recipes():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM recipes")
    recipes = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(recipes)

# Add a new recipe
@app.route("/add_recipe", methods=["POST"])
def add_recipe():
    data = request.json
    conn = get_db_connection()
    cursor = conn.cursor()
    query = """
    INSERT INTO recipes (title, description, category, ingredients, instructions, image_url)
    VALUES (%s, %s, %s, %s, %s, %s)
    """
    cursor.execute(query, (
        data["title"], data["description"], data["category"],
        data["ingredients"], data["instructions"], data["image_url"]
    ))
    conn.commit()
    cursor.close()
    conn.close()
    return jsonify({"message": "Recipe added successfully!"}), 201

# Run the app
if __name__ == "__main__":
    app.run(debug=True)
