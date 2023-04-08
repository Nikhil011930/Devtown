-- Create A DATABASE 
-- SYNTAX: CREATE DATABASE database_name;
create database test;


-- DELETE A DATABASE
-- SYNATX: DROP DATABASE database_name;
DROP DATABASE test;


-- USE A DATABSE
-- SYNTAX: USE database_naem;
USE test;


-- CREATE A TABLE
-- SYNTAX: CREATE TABLE tabel_name(
-- 				col1 datatype(len),
-- 				col2 datatype(len));
Create Table employee(name char(15), salary int(100), phone_number int (10),
email varchar (100), department char(50));


-- Create a new table from the existing table
-- SYNTAX: CREATE TABLE new_table_name AS
-- 			SELECT col1, col2,....
-- 			FROM existing_table;
Create Table employee1 AS 
select salary, department
from employee;


-- DELETE A TABLE
-- 1. DROP  --> Delete the existing table 
-- SYNTAX: DROP TABLE table_name;
Drop table employee1;
 
 -- 2. TRUNCATE --> Delete the data inside the table but not the table itself
 -- SYNTAX: TRUNCATE TABELE table_name;
Truncate table employee;

-- Create --> CREATE
-- DELET --> Drop
-- Update --> ALTER/MODIFY

-- Alter the table (Update the table)

-- 1. Add the column in a table
-- SYNTAX: ALTER TABLE table_name
-- 			ADD col_name datatype(len);
ALTER TABLE employee 
Add marital_status char(20);


-- 2. Delete colum in a table
-- SYNTAX: ALTER TABLE table_name
-- 			DROP col_name datatype(len);
ALTER TABLE employee 
DROP marital_status;

-- 3. Change the datatype of the column 
-- FOR MICROSOFT SQL SERVER
-- SYNTAX: ALTER TABLE table_name
-- 			ALTER COLUMN col_name datatype(len);

-- FOR MySQL/Oracle
-- SYNTAX: ALTER TABLE table_name
-- 			MODIFY COLUMN col_name datatype(len);

-- FOR Oracle 10G and Later
-- SYNTAX: ALTER TABLE table_name
-- 			MODIFY col_name datatype(len);

ALTER TABLE employee
Modify Column salary varchar(100);