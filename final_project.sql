DROP DATABASE austin_life_zip_db;

CREATE DATABASE austin_life_zip_db;

USE austin_life_zip_db;

CREATE TABLE public_health (
	id INT PRIMARY KEY AUTO_INCREMENT,
    facility_name TEXT,
    street_address TEXT,
    zip_code INT
);

CREATE TABLE parks (
	id INT PRIMARY KEY AUTO_INCREMENT,
    park_id INT,
    park_name TEXT,
	street_address TEXT,
    zip_code INT
);

CREATE TABLE imr (
	id iNT PRIMARY KEY AUTO_INCREMENT,
    infant_mortality_rate INT,
    zip_code INT,
    number_of_births TEXT
);


CREATE TABLE restaurant_scores (
	id INT PRIMARY KEY AUTO_INCREMENT,
	facility_id INT,
	restaurant_name TEXT,
	zip_code INT,
	inspect_date TEXT,
	inspect_score INT
);

CREATE TABLE crime_data (
	id iNT PRIMARY KEY AUTO_INCREMENT,
    zipcode INT,
    count INT
);

SELECT * FROM parks;
SELECT * FROM restaurant_scores;

SELECT infant_mortality_rate, count, zip_code
FROM crime_data
INNER JOIN
ON crime_data.zipcode = imr.zip_code;

SELECT r_z.average AS AVG_REST_INSPECT_SCORE, p_z.cnt AS PARK_COUNT, p_z.zip_code
FROM (SELECT AVG(inspect_score) as average, zip_code
		FROM restaurant_scores
        GROUP BY zip_code) r_z
INNER JOIN (SELECT count(zip_code) as cnt, zip_code
			FROM parks
            GROUP BY zip_code) p_z
ON p_z.zip_code = r_z.zip_code;

SELECT p_z.cnt AS PARK_COUNT, count AS CRIME_COUNT, zipcode
FROM crime_data c_d
INNER JOIN (SELECT COUNT(zip_code) as cnt, zip_code
			FROM parks
            GROUP BY zip_code) p_z
ON p_z.zip_code = c_d.zipcode;


