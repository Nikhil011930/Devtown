Create Database CARTOON;

use CARTOON;

Create Table Doraemon(
		ID int,
        Name char,
        Address varchar(100),
        Age int
        );       

-- Nullable meanc can be null optional 

-- Constraints
-- example--> Password : abc123 
-- Popup --> Special character, one uppercase, one lowercase len(>8) This popup is known as constraints.
-- SYNTAX for the CONSTRAINTS
-- CREATE TABLE table_name(col1 datatype constraint,
-- 						col2 datatype constraint);

Drop table Doraemon;
-- NOT NULL
Create Table Doraemon(
		ID int NOT NULL,
        Name char,
        Address varchar(100),
        Age int
        );       

Alter table Doraemon 
modify column Name char Not Null;

-- UNIQUE --> All the data added should be different
-- 		  --> It can be NULL

ALTER TABLE Doraemon
MODIFY COLUMN  Age int  NOT NULL UNIQUE;

-- DIfference b/w UNIQUE & PRIMARY KEY
-- PRIMARY KEY = NOT NULL + UNIQUE
-- Unique key can allow the NULL value where the primary key doesn't allow the null value

-- IF we are in the SQL Server/ORACLE/ MS ACCESS
-- CREATE TABLE SHINCHAN (
-- 		ID INT NOT NULL UNIQUE (Primary key),
-- 		Name CHAR UNIQUE (Primary key),
-- 		Address varchar(100),
-- 		Age int )


-- If we are using the MySQL Server for Unique and Primary KEy
Create table Oggy(
ID INT NOT NULL,
Name CHAR,
Address varchar(100),
Age int , 
-- UNIQUE(ID, Name, Address, Age))
Primary key (ID, Name, Address, Age));

-- PRIMARK KEY (PK) = UNIQUE Constraints + Not Null Constraints
-- A Table can have MULTIPLE UNIQUE CONSTRAINT but, 
-- can only have ONE PRIMARY KEY CONSTRAINT

-- WHAT IF we want to use multiple primary key constraint?
-- Then we have to create the container
-- container = [ ANd we can put no. of columns name in it],
-- as the conatiner will be consider as one primary key.

-- PK FOR SINGLE FIELD
-- ALTER TABLE oggy
-- 	ADD PRIMARY KEY (Age);

-- PK FOR MULTIPLE FIELD
-- ALTER TABLE oggy
-- 	ADD CONSTRAIN oggyPR PRIMARY KEY (Age, Address, Name);
-- oggyPR is the name of primary key 
-- Foreign Key, Check, Date, etc.

DROP TABLE doraemon, oggy;

Create table Employee(
ID int(100),
Name char (20) Not null,
Salary int (100)Not NULL,
Experience int (100) Not NULL,primary key(ID) 
);

-- INSERT DATA INTO COLUMNS
-- SYNATX: INSERT INTO table_name (col1,col2,col3,..)
-- 	VALUES (1, "fox","fozevo@gmail.com");
INSERT INTO employee (ID, Name, Salary, Experience)
value (10, "SUNIL", 1500, 5);

-- IF we want to alter any table after creating the table
-- Alter table employee
-- 	modify column name charr (100);

INSERT INTO employee (ID, Name, Salary, Experience)
value (1, "Ravi", 5, 0);
INSERT INTO employee (ID, Name, Salary, Experience)
value (2, "Rohit", 50000, 1);
INSERT INTO employee (ID, Name, Salary, Experience)
value (3, "Aayush", 25000, 4);
INSERT INTO employee (ID, Name, Salary, Experience)
value (4, "Sahil", 15, 1);
INSERT INTO employee (ID, Name, Salary, Experience)
value (5, "Venkat", 10000, 7);
INSERT INTO employee (ID, Name, Salary, Experience)
value (6, "Priya", 3000, 2);
INSERT INTO employee (ID, Name, Salary, Experience)
value (7, "Vishal", 3500, 1);

-- When we are sure we are giving all the values for all the columns in table
Insert into employee ()
value (13, "Loki",700,7);

-- CHOOSE --> SELECT
-- ALL --> * (each and everything from a dataset)
-- FROM --> FROM 

select * from employee;
Select Name,Salary from employee;
select ID,Salary from employee;

-- Distinct doesn't shows us the repeated values.
Select DISTINCT experience from employee;

-- WHERE CLAUSE IS For FILTERING PART
-- Operators >,<,>=,<=,=, !=/<> (This both are not equal to), Between 8< X >10, like (Takes/search for pattern) 
-- Text values = quotes
-- Numeric values = no quotes

select salary from employee
where salary > 3000;
-- where email like "@gmail.com"

-- if i want to give the multiple conditions.
-- AND, OR, NOT
-- SYNTAX: where condition1 and condition2 or condition3;
-- where not salary > 10;

-- update is use for data
-- ALter/modify -> TABLE

-- Change the column name
Update employee 
Set Name="Shruthi"
where ID = 10;
