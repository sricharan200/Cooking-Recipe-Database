DROP SCHEMA IF EXISTS cooking CASCADE;
CREATE SCHEMA cooking;
CREATE TABLE cooking.categories (
category_id SERIAL PRIMARY KEY,
name TEXT,
description TEXT);
CREATE TABLE cooking.ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT
);
CREATE TABLE cooking.recipes (
    recipe_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT,
    preparation_time INT, -- in minutes
    cooking_time INT, -- in minutes
    serves INT,
    description TEXT,
    category_id INT REFERENCES cooking.categories(category_id)
);

CREATE TABLE cooking.recipe_ingredients (
    recipe_id INT REFERENCES cooking.recipes(recipe_id),
    ingredient_id INT REFERENCES cooking.ingredients(ingredient_id),
    quantity TEXT NOT NULL,
    PRIMARY KEY (recipe_id, ingredient_id)
);

CREATE TABLE cooking.comments (
    comment_id SERIAL PRIMARY KEY,
    recipe_id INT REFERENCES cooking.recipes(recipe_id),
    user_id TEXT, -- Assuming there is a user management system elsewhere
    comment TEXT,
    comment_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE cooking.nutrition_info (
    ingredient_id INT PRIMARY KEY REFERENCES cooking.ingredients(ingredient_id),
    calories DECIMAL(5,2),
    protein DECIMAL(5,2),
    carbs DECIMAL(5,2),
    fats DECIMAL(5,2),
    sugar DECIMAL(5,2),
    sodium DECIMAL(5,2)
);

CREATE VIEW cooking.recipe_summary AS
SELECT r.recipe_id, r.title, COUNT(ri.ingredient_id) AS total_ingredients
FROM cooking.recipes r
JOIN cooking.recipe_ingredients ri ON r.recipe_id = ri.recipe_id
GROUP BY r.recipe_id;