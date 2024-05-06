INSERT INTO cooking.categories (name, description)
VALUES
    ('Dessert', 'Sweet dishes that are typically served as the final course of a meal.'),
    ('Main Course', 'Primary dish of a meal, typically served during lunch or dinner.'),
    ('Appetizer', 'Small dishes served before the main course to stimulate the appetite.');

INSERT INTO cooking.ingredients (name, description)
VALUES
    ('Flour', 'Powdered grain used in baking and cooking.'),
    ('Sugar', 'Sweet-tasting, soluble carbohydrates used in food.'),
    ('Chicken', 'Meat from chickens, used as food.'),
    ('Garlic', 'A strong-smelling, pungent-tasting bulb, used as a flavoring.'),
    ('Olive Oil', 'Liquid fat obtained from olives.'),
    ('Tomatoes', 'Edible red fruit used as a vegetable in cooking.'),
    ('Basil', 'Aromatic herb used in cooking, commonly used in Italian cuisine.');

INSERT INTO cooking.recipes (title, author, preparation_time, cooking_time, serves, description, category_id)
VALUES
    ('Classic Tomato Spaghetti', 'John Doe', 10, 20, 2, 'Simple and delicious spaghetti with tomatoes and basil.', 2),
    ('Garlic Chicken', 'Jane Smith', 15, 45, 4, 'Juicy and flavorful chicken cooked with garlic.', 2),
    ('Chocolate Cake', 'Emily Clarke', 20, 30, 8, 'Rich chocolate cake that melts in your mouth.', 1);

INSERT INTO cooking.recipe_ingredients (recipe_id, ingredient_id, quantity)
VALUES
    (1, 5, '2 tablespoons'),
    (1, 6, '5 tomatoes'),
    (1, 7, '20 grams'),
    (2, 3, '1 kg'),
    (2, 4, '10 cloves'),
    (3, 1, '200 grams'),
    (3, 2, '300 grams');

INSERT INTO cooking.comments (recipe_id, user_id, comment)
VALUES
    (1, 'Shloka', 'This was so easy and delicious!'),
    (2, 'Sudha', 'Perfect dinner dish, my family loved it.'),
    (3, 'Shyam', 'The cake was fantastic, great recipe!');

INSERT INTO cooking.nutrition_info (ingredient_id, calories, protein, carbs, fats, sugar, sodium)
VALUES
    (1, 364.0, 10.0, 76.0, 1.0, 0.4, 2.0),
    (2, 387.0, 0.0, 100.0, 0.0, 99.8, 1.0),
    (3, 239.0, 27.0, 0.0, 14.0, 0.0, 82.0),
    (4, 149.0, 6.4, 33.1, 0.5, 1.0, 17.0),
    (6, 18.0, 0.9, 3.9, 0.2, 2.6, 5.0),
    (7, 27.0, 3.2, 2.7, 0.6, 0.3, 4.0);
