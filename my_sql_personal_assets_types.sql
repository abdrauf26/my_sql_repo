CREATE DATABASE assets_types_database; # create database

-- DROP DATABASE assets_types_database; # drop a database

USE assets_types_database; # use a database

CREATE TABLE personal_assets( # create a table
personal_assets_id INT NOT NULL,
personal_assets_type VARCHAR(30) NOT NULL,
personal_assets_amount INT NOT NULL, 
PRIMARY KEY (personal_assets_id),
UNIQUE (personal_assets_type)
);

ALTER TABLE personal_assets # Alter table by adding a new column
ADD COLUMN Liquidity_level INT NOT NULL;

INSERT INTO personal_assets # Insert records
(personal_assets_id, personal_assets_type, personal_assets_amount, Liquidity_level)
VALUES
(1,"Cash",2000, 9),
(2,"Precious Metals",3000,5),
(3,"Savings Account",2500, 7),
(4,"Stocks", 1500, 6);

UPDATE personal_assets # update records
SET personal_assets_type = "Savings Account" WHERE personal_assets_id = 3;

# Extract Database
SELECT * FROM personal_assets; # select all from the database

SELECT SUM(personal_assets_amount) FROM	personal_assets; #calculating total amount

SELECT personal_assets_type, Liquidity_level FROM personal_assets; #selecting from database

SELECT * FROM personal_assets WHERE #selecting from database where item starts with an alphabet
personal_assets_type LIKE 'S%';

SELECT * FROM personal_assets ORDER BY Liquidity_level ASC; #sorting from lowest to highest