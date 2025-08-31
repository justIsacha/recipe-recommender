-- Create the database
CREATE DATABASE recipe_recommender;
USE recipe_recommender;

-- Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Recipes Table
CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    ingredients TEXT,
    instructions TEXT,
    image_url VARCHAR(255)
);

-- Insert sample recipes
INSERT INTO recipes (title, description, category, ingredients, instructions, image_url) 
VALUES
-- Breakfast
("Pancakes", "Fluffy homemade pancakes with syrup.", "breakfast", 
 "Flour, Eggs, Milk, Sugar, Baking Powder", 
 "Mix ingredients, cook on skillet until golden brown.", 
 "images/pancakes.jpg"),
("Omelette", "Cheese and veggie omelette.", "breakfast", 
 "Eggs, Cheese, Onion, Tomato, Bell pepper", 
 "Whisk eggs, add fillings, cook in pan.", 
 "images/omelette.png"),
("French Toast", "Classic French toast with cinnamon and syrup.", "breakfast",
 "Bread, Eggs, Milk, Cinnamon, Sugar, Butter",
 "Whisk eggs, milk, cinnamon, soak bread, cook on skillet, serve with syrup.",
 "images/french toast.jpg"),
("Avocado Toast", "Toasted bread topped with smashed avocado and seasoning.", "breakfast",
 "Bread, Avocado, Salt, Pepper, Lemon juice",
 "Toast bread, smash avocado with seasoning, spread on toast.",
 "images/avocado toast.png"),
("Breakfast Burrito", "Tortilla filled with eggs, cheese, and veggies.", "breakfast",
 "Tortilla, Eggs, Cheese, Bell pepper, Onion, Salsa",
 "Scramble eggs with veggies, fill tortilla, add cheese and salsa, roll up.",
 "images/breakfast burrito.png"),
("Banana Smoothie Bowl", "Healthy smoothie bowl topped with fruits and seeds.", "breakfast",
 "Banana, Yogurt, Honey, Granola, Berries, Chia seeds",
 "Blend banana, yogurt, honey, pour into bowl, top with granola, berries, chia seeds.",
 "images/banana smoothie bowl.jpg"),
("Egg Muffins", "Baked egg muffins with veggies and cheese.", "breakfast",
 "Eggs, Spinach, Tomato, Cheese, Bell pepper, Salt, Pepper",
 "Mix eggs and veggies, pour into muffin tin, bake until set.",
 "images/egg muffins.jpg"),

-- Lunch
("Grilled Chicken Salad", "Healthy grilled chicken with fresh veggies.", "lunch", 
 "Chicken breast, Lettuce, Tomato, Cucumber, Olive oil", 
 "Grill chicken, chop veggies, toss together with olive oil.",
 "images/grilled chicken salad.png"),
("Spaghetti Bolognese", "Classic Italian pasta with rich meat sauce.", "lunch", 
 "Spaghetti, Ground beef, Tomato sauce, Onion, Garlic", 
 "Cook spaghetti, prepare meat sauce, combine and serve.",
 "images/Spaghetti Bolognese.jpg"),
("Chicken Caesar Wrap", "Grilled chicken, romaine, and Caesar dressing in a wrap.", "lunch",
 "Tortilla, Chicken breast, Romaine lettuce, Caesar dressing, Parmesan cheese",
 "Grill chicken, slice, assemble with lettuce and dressing in tortilla, wrap and serve.",
 "images/chicken caesar wrap.png"),
("Veggie Stir Fry", "Mixed vegetables stir-fried with soy sauce.", "lunch",
 "Broccoli, Bell pepper, Carrot, Snap peas, Soy sauce, Garlic, Ginger",
 "Chop veggies, stir fry with garlic and ginger, add soy sauce, serve hot.",
 "images/Veggie Stir Fry.png"),
("Turkey Club Sandwich", "Classic turkey club with bacon, lettuce, and tomato.", "lunch",
 "Bread, Turkey breast, Bacon, Lettuce, Tomato, Mayonnaise",
 "Toast bread, layer turkey, bacon, lettuce, tomato, and mayo, cut and serve.",
 "images/Turkey Club Sandwich.png"),
("Quinoa Salad", "Protein-packed quinoa salad with veggies.", "lunch",
 "Quinoa, Cucumber, Tomato, Feta cheese, Olive oil, Lemon juice",
 "Cook quinoa, chop veggies, mix with feta, olive oil, and lemon juice.",
 "images/Quinoa Salad.png"),

-- Dinner
("Grilled Salmon", "Salmon fillet grilled to perfection with herbs.", "dinner",
 "Salmon fillet, Olive oil, Lemon, Dill, Salt, Pepper",
 "Brush salmon with oil and seasoning, grill until cooked through.",
 "images/grilled salmon.jpg"),
("Beef Stir Fry", "Tender beef strips stir-fried with vegetables.", "dinner",
 "Beef strips, Broccoli, Bell pepper, Soy sauce, Garlic, Ginger",
 "Stir fry beef, add veggies and sauce, cook until tender.",
 "images/beef stir fry.png"),
("Chicken Alfredo Pasta", "Creamy Alfredo pasta with grilled chicken.", "dinner",
 "Pasta, Chicken breast, Cream, Parmesan, Garlic, Butter",
 "Cook pasta, grill chicken, make Alfredo sauce, combine all.",
 "images/Chicken Alfredo Pasta.png"),
("Vegetable Curry", "Mixed vegetables simmered in a flavorful curry sauce.", "dinner",
 "Mixed vegetables, Curry powder, Coconut milk, Onion, Garlic, Ginger",
 "Sauté onion, garlic, ginger, add veggies and curry, simmer with coconut milk.",
 "images/Vegetable Curry.png"),
("Shrimp Tacos", "Spicy shrimp served in soft tortillas with slaw.", "dinner",
 "Shrimp, Tortillas, Cabbage, Lime, Cilantro, Spices",
 "Cook shrimp with spices, assemble in tortillas with slaw.",
 "images/Shrimp Tacos.png"),
("Stuffed Bell Peppers", "Bell peppers stuffed with rice and ground beef.", "dinner",
 "Bell peppers, Ground beef, Rice, Tomato sauce, Onion, Cheese",
 "Prepare filling, stuff peppers, bake until tender.",
 "images/Stuffed Bell Peppers.png"),
("Lamb Chops", "Grilled lamb chops with rosemary and garlic.", "dinner",
 "Lamb chops, Garlic, Rosemary, Olive oil, Salt, Pepper",
 "Marinate lamb chops with garlic and rosemary, grill until cooked.",
 "images/lamb chops.png"),
("Mushroom Risotto", "Creamy risotto with mushrooms and parmesan.", "dinner",
 "Arborio rice, Mushrooms, Onion, Garlic, Parmesan, Butter, Stock",
 "Cook onion and garlic, add rice and stock gradually, stir in mushrooms and parmesan.",
 "images/mushroom risotto.png");

--Snacks
("Nachos", "Crispy tortilla chips topped with cheese and salsa.", "snack",
 "Tortilla chips, Cheese, Salsa, Jalapeños, Sour cream",
 "Layer chips on tray, sprinkle cheese, bake until melted, top with salsa and jalapeños.",
 "images/nachos.png"),

("Fruit Salad", "Refreshing mix of seasonal fruits.", "snack",
 "Apple, Banana, Orange, Grapes, Berries, Honey, Lemon juice",
 "Chop fruits, drizzle with honey and lemon, mix and serve.",
 "images/fruit_salad.jpg"),

("Popcorn", "Light and crunchy buttered popcorn.", "snack",
 "Popcorn kernels, Butter, Salt",
 "Heat kernels in a pan until popped, toss with melted butter and salt.",
 "images/popcorn.jpg"),

("Spring Rolls", "Crispy fried rolls stuffed with veggies.", "snack",
 "Spring roll wrappers, Cabbage, Carrot, Onion, Soy sauce, Oil",
 "Stir-fry veggies, fill wrappers, roll tightly, fry until golden.",
 "images/spring_rolls.png"),

("Samosa", "Golden fried pastry filled with spiced potatoes and peas.", "snack",
 "Potatoes, Peas, Onion, Spices, Flour, Oil",
 "Cook filling, stuff into dough, fold into triangles, deep fry until crisp.",
 "images/samosa.png"),

("Garlic Bread", "Toasted bread flavored with garlic and butter.", "snack",
 "Bread, Garlic, Butter, Parsley",
 "Mix garlic with butter, spread on bread, bake until golden.",
 "images/Garlic Bread.jpg");

-- Desserts
("Chocolate Cake", "Rich and moist chocolate cake with chocolate frosting.", "dessert",
 "Flour, Cocoa powder, Eggs, Sugar, Butter, Baking powder, Chocolate",
 "Mix dry ingredients, add wet ingredients, bake, cool, and frost with chocolate.",
 "images/chocolate_cake.png"),

("Cheesecake", "Creamy cheesecake with a buttery graham cracker crust.", "dessert",
 "Cream cheese, Sugar, Eggs, Graham crackers, Butter, Vanilla extract",
 "Prepare crust, mix cream cheese filling, bake, chill, and serve.",
 "images/cheesecake.png"),

("Brownies", "Fudgy chocolate brownies with a crispy top.", "dessert",
 "Flour, Cocoa powder, Sugar, Eggs, Butter, Chocolate chips",
 "Mix ingredients, pour into pan, bake until set, cool, cut into squares.",
 "images/brownies.png"),

("Apple Pie", "Classic apple pie with cinnamon and flaky crust.", "dessert",
 "Apples, Sugar, Cinnamon, Pie crust, Butter, Lemon juice",
 "Prepare crust, mix apples with sugar and cinnamon, fill crust, bake until golden.",
 "images/apple_pie.png"),

 ("Tiramisu", "Classic Italian dessert with coffee-soaked ladyfingers and mascarpone.", "dessert",
 "Ladyfingers, Coffee, Mascarpone, Sugar, Cocoa powder, Eggs",
 "Dip ladyfingers in coffee, layer with mascarpone mixture, chill, dust with cocoa before serving.",
 "images/tiramisu.png");

 -- Beverages
("Mango Smoothie", "Refreshing mango smoothie with a creamy texture.", "beverage",
 "Mango, Yogurt, Milk, Honey, Ice cubes",
 "Blend mango, yogurt, milk, honey, and ice until smooth, serve chilled.",
 "images/mango_smoothie.png"),

("Strawberry Milkshake", "Sweet and creamy strawberry milkshake.", "beverage",
 "Strawberries, Milk, Ice cream, Sugar, Whipped cream",
 "Blend strawberries, milk, ice cream, and sugar until smooth, top with whipped cream.",
 "images/strawberry_milkshake.png"),

("Lemonade", "Freshly squeezed lemonade with a hint of mint.", "beverage",
 "Lemons, Sugar, Water, Mint leaves, Ice cubes",
 "Squeeze lemons, mix with water and sugar, add mint leaves and ice, serve chilled.",
 "images/lemonade.png"),

("Iced Coffee", "Cold coffee with milk and a touch of sugar.", "beverage",
 "Brewed Coffee, Milk, Ice cubes, Sugar",
 "Pour coffee over ice, add milk and sugar to taste, stir well and serve.",
 "images/iced_coffee.png"),

("Hot Chocolate", "Warm chocolate drink with a rich flavor.", "beverage",
 "Milk, Cocoa powder, Sugar, Chocolate, Whipped cream",
 "Heat milk, mix in cocoa powder and sugar, add chocolate until melted, top with whipped cream.",
 "images/hot_chocolate.png");

SELECT *FROM recipes;
USE recipe_recommender;
INSERT INTO recipes (title, description, category, ingredients, instructions, image_url) 
VALUES
-- Appetizers
("Bruschetta", "Toasted bread topped with fresh tomatoes and basil.", "appetizer",
 "Baguette slices, Tomatoes, Basil, Garlic, Olive oil, Salt, Pepper",
 "Toast bread slices, mix chopped tomatoes with basil and garlic, top bread with mixture, drizzle olive oil.",
 "images/bruschetta.png"),

("Stuffed Mushrooms", "Mushrooms filled with cheese and herbs.", "appetizer",
 "Mushrooms, Cream cheese, Parmesan, Garlic, Parsley, Breadcrumbs",
 "Remove stems, mix filling ingredients, stuff mushrooms, bake until golden.",
 "images/stuffed_mushrooms.png"),

("Deviled Eggs", "Hard-boiled eggs filled with a creamy yolk mixture.", "appetizer",
 "Eggs, Mayonnaise, Mustard, Paprika, Salt, Pepper",
 "Boil eggs, halve them, mix yolks with mayonnaise and mustard, fill egg whites, sprinkle paprika.",
 "images/deviled_eggs.png"),

("Caprese Skewers", "Mini skewers with mozzarella, cherry tomatoes, and basil.", "appetizer",
 "Mozzarella balls, Cherry tomatoes, Basil leaves, Olive oil, Balsamic glaze, Salt, Pepper",
 "Skewer mozzarella, tomato, and basil, drizzle olive oil and balsamic glaze, season with salt and pepper.",
 "images/caprese_skewers.png");
