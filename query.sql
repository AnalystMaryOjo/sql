--Query for counting:
SELECT COUNT(*) AS totalcount FROM `prizeeee`;
--QUERY FOR SUM:
SELECT `coffee_type`, SUM(`profit`) AS total FROM `prizeeee` GROUP BY `coffee_type`;
--QUERY FOR AVERAGE:
SELECT `coffee_type`, AVG(`profit`) AS total FROM `prizeeee` GROUP BY `coffee_type`;
--Query for maxium
SELECT MAX(`price_per_100g`) AS result  FROM prizeeee;
--QUERY FOR MIN:
SELECT MIN(`price_per_100g`) AS result  FROM prizeeee;
--QUERY FOR STANDARD DEVIATION:
SELECT STDDEV(`price_per_100g`) AS result  FROM prizeeee;_

--QUERIES ON WHERE PROFIT IS GREATER THAN 2.95
SELECT * FROM `prizeeee` WHERE profit > 2.95;

--QUERIES ON WHERE RISE IS LESS THAN 0.5
SELECT * FROM prizeeee WHERE `rise` < 0.5;

--QUERIES ON WHERE PROFIT IS LESS THAN OR EQUAL TO 0.456
SELECT * FROM `prizeeee` WHERE `profit` <= 0.456;

--QUERIES ON WHERE UNIT PRICE IS EQUAL TO 22.885
SELECT * FROM `prizeeee` WHERE `unit_price` = 22.885;

--QUERIES ON WHERE UNIT PRICE IS BETWEEN 7.77 AND 22.885
SELECT * FROM `prizeeee` WHERE `unit_price` BETWEEN 7.77 and 22.885;

--QUERIES WHERE THE COLON HAS A PATTERN. (DATA FETCHING)
SELECT * FROM `prizeeee` WHERE `product_id` LIKE '%%A-M%%';

SELECT * FROM `prizeeee` WHERE `product_id` LIKE '%%A-M-0%%';

--QUERIES WHERE PROFIT IS NOT EQUAL TO
SELECT * FROM `prizeeee` WHERE `profit` != 22.885; 

--QUERIES WHERE PROFIT IS EQUAL TO EMOTY STRINGS
SELECT * FROM `prizeeee` WHERE `profit` = '';

--Queries for altering table name (renaming a table)
ALTER TABLE `sales` RENAME TO `market`;

--QUERIES FOR CHANGING COLUMN NAME
ALTER TABLE `market` CHANGE COLUMN `rise` `price_increase` FLOAT;

--QUERIES TO ADD COLUMN
ALTER TABLE `market` ADD COLUMN  `person` varchar(50);

--QUESTION 
--Write SQL statement to populate the two new columns with int and varchar(50) respectively 

--Drop any of the unwanted Column afterward

--Queries to update table and set fix value
UPDATE `market` SET `customer` = 5;

UPDATE `market` SET `person`= 'jan';

UPDATE `market` SET person = 'joe' WHERE coffee_type = 'Ara';

ALTER TABLE `market` DROP COLUMN `customer`;

--MODIFICATION OF DATATYPE(FLOAT OR VARCHAR)
ALTER TABLE `market` MODIFY COLUMN `price_increase` varchar(350);

--TRUNCATING CLEAR THE CONTENT IN COLUMNS LEAVING THE COLUMNS NAMES. WHEREAS ‘DROP’ DOES A PERMANENT DELETE.
TRUNCATE `market`;

DROP TABLE `market`;

--DATA MANIPULATION(INSERT FUNCTION)
INSERT INTO `market` VALUES ('M-P-0.7', 'CARAMEL', 'T', '3.5', '8.000', '3.95', '7.05', 'ALFRED');

--PARTIAL INSERT QUERIES.
INSERT INTO `market` (`coffee_type`, `unit_price`) VALUE ('COCOA', '0.4567');

--UPDATING ALL ROWS BASED ON PREDEFINED OPERATIONS
UPDATE `market` SET `unit_price` = 1.5 * `unit_price`;

--UPDATING ALL ROWS BASED ON PREDEFINED OPERATIONS with a WHERE STATEMENT.
UPDATE `market` SET `unit_price` = 10 * `unit_price` WHERE `person` = 'joe';

--DELETE A SPECIFIED ROW
DELETE FROM `market` WHERE `coffee_type` = 'COCOA';

--DATA QUERY LANGUAGE: -- select only specified columns with a WHERE CLAUSE.
SELECT `product_id`, `coffee_type` FROM `market` WHERE `person` = 'ALFRED';

--DATA QUERY LANGUAGE : select only few rows
select `price_increase` `unit_price` from `market` where `Revenue` > 5;

