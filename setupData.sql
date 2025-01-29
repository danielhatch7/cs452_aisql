INSERT INTO user (user_id, first_name, last_name) VALUES
(1, 'Laura', 'Stevenson'),
(2, 'Bob', 'Jones'),
(3, 'Charlie', 'Brown'),
(4, 'Jimmy', 'Hendricks'),
(5, 'Sydney', 'Smith'),
(6, 'Jordan', 'Malone');

INSERT INTO recipe (recipe_id, user_id, recipe_name, category, difficulty, prep_time, cook_time, instructions) VALUES
(1, 1, 'Spaghetti Bolognese', 'Pasta', 'Easy', 15, 45, 'Cook pasta. Prepare sauce. Mix together.'),
(2, 2, 'Chicken Curry', 'Main Dish', 'Medium', 20, 40, 'Cook chicken. Prepare curry sauce. Simmer.'),
(3, 3, 'Vegetable Stir Fry', 'Vegetarian', 'Easy', 10, 15, 'Stir fry vegetables with sauce.'),
(7, 3, 'Ice Cream', 'Dessert', 'Easy', 10, 15, 'Open tub, eat, enjoy.'),
(8, 3, 'Pizza', 'Main Dish', 'Easy', 10, 15, 'Just buy it from the store.'),
(4, 4, 'Beef Tacos', 'Mexican', 'Medium', 25, 20, 'Prepare beef. Assemble tacos.'),
(5, 5, 'Greek Salad', 'Salad', 'Easy', 10, 0, 'Chop vegetables. Mix dressing. Toss together.'),
(9, 5, 'Fruit Salad', 'Salad', 'Easy', 10, 0, 'Chop vegetables. Mix dressing. Toss together.'),
(10, 5, 'Cesar Salad', 'Salad', 'Easy', 10, 0, 'Chop vegetables. Mix dressing. Toss together.'),
(11, 5, 'Frog Eye Salad', 'Salad', 'Easy', 10, 0, 'Chop vegetables. Mix dressing. Toss together.'),
(6, 6, 'Banana Pancakes', 'Breakfast', 'Easy', 10, 15, 'Prepare batter. Cook pancakes. Serve.');

INSERT INTO ingredient (ingredient_id, ingredient_name, category) VALUES
(1, 'Spaghetti', 'Pasta'),
(2, 'Ground Beef', 'Meat'),
(3, 'Tomato Sauce', 'Condiment'),
(4, 'Chicken', 'Meat'),
(5, 'Curry Powder', 'Spice'),
(6, 'Vegetables', 'Produce'),
(7, 'Taco Shells', 'Mexican'),
(8, 'Cheese', 'Dairy'),
(9, 'Lettuce', 'Produce'),
(10, 'Bananas', 'Fruit'),
(11, 'Flour', 'Baking'),
(12, 'Eggs', 'Baking');

INSERT INTO recipeingredient (recipeingredient_id, recipe_id, ingredient_id, quantity, units) VALUES
(1, 1, 1, 200, 'grams'),
(2, 1, 2, 300, 'grams'),
(3, 1, 3, 250, 'ml'),
(4, 2, 4, 400, 'grams'),
(5, 2, 5, 10, 'grams'),
(6, 3, 6, 300, 'grams'),
(7, 4, 7, 8, 'pieces'),
(8, 4, 2, 300, 'grams'),
(9, 4, 8, 100, 'grams'),
(10, 5, 6, 200, 'grams'),
(11, 5, 9, 100, 'grams'),
(12, 6, 10, 3, 'pieces'),
(13, 6, 11, 200, 'grams'),
(14, 6, 12, 2, 'pieces');

INSERT INTO mealplan (mealplan_id, mealplan_name, user_id, start_date, end_date) VALUES
(1, 'Weekly Meal Plan', 1, '2025-01-01', '2025-01-07'),
(2, 'Vegetarian Week', 3, '2025-01-08', '2025-01-14'),
(3, 'Quick Meals', 5, '2025-01-15', '2025-01-21');

INSERT INTO mealplanrecipe (mealplanrecipe_id, mealplan_id, recipe_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 5),
(5, 3, 4),
(6, 3, 6);