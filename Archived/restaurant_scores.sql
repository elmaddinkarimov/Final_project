CREATE DATABASE restaurant_scores_db;
USE restaurant_scores_db;



CREATE TABLE restaurant_scores (
facility_id INT PRIMARY KEY,
restaurant_name TEXT,
zip_code INT,
inspect_date TEXT,
inspect_score INT
);

SELECT * FROM restaurant_scores;