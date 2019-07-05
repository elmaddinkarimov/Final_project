
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
CREATE TABLE crime_data (
	id iNT PRIMARY KEY AUTO_INCREMENT,
    zipcode INT,
    count INT
);
