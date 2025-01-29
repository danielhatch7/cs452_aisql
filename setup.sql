CREATE TABLE user (
    user_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE recipe (
    recipe_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    recipe_name TEXT NOT NULL,
    category TEXT,
    difficulty TEXT,
    prep_time INTEGER, 
    cook_time INTEGER, 
    instructions TEXT,
    FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE ingredient (
    ingredient_id INTEGER PRIMARY KEY,
    ingredient_name TEXT NOT NULL,
    category TEXT
);

CREATE TABLE recipeingredient (
    recipeingredient_id INTEGER PRIMARY KEY,
    recipe_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    quantity REAL NOT NULL, 
    units TEXT NOT NULL, 
    FOREIGN KEY (recipe_id) REFERENCES recipe (recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient (ingredient_id)
);

CREATE TABLE mealplan (
    mealplan_id INTEGER PRIMARY KEY,
    mealplan_name TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE mealplanrecipe (
    mealplanrecipe_id INTEGER PRIMARY KEY,
    mealplan_id INTEGER NOT NULL,
    recipe_id INTEGER NOT NULL,
    FOREIGN KEY (mealplan_id) REFERENCES mealplan (mealplan_id),
    FOREIGN KEY (recipe_id) REFERENCES recipe (recipe_id)
);