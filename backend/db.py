import mysql.connector

def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",        # MySQL username
        password="Lorenzoh2025#",   # MySQL password
        database="recipe_recommender"
    )
