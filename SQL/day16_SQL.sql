Create database sports;
use sports;
Create table cricket(
Player_ID int auto_increment,
player_name char(100) not null,
player_role char(100) not null,
country char (100) not null,
primary key (Player_ID)
);


insert into cricket (player_name, player_role, country)
values
('Sachin','Bastman', 'India'),
('ABD','Wicket keeper Bastman', 'South Africa'),
('Buttler','Bastman', 'England'),
('Polladr','All rounder', 'West Indies'),
('Brovo','Baller', 'West Indies'),
('Kane ','Bastman', 'New Zealand'),
('Starc','Baller', 'Australia');

select * from cricket;

select player_role from cricket;

Create table Football(
Player_ID int auto_increment,
player_name char(100) not null,
player_role char(100) not null,
country char (100) not null,
primary key (Player_ID)
);

insert into football (player_name, player_role, country)
values
('L Messi','ST', 'Argentina'),
('C. Ronaldo','ST', 'Portugal'),
('Neymar','LW', 'Brazil'),
('D. Maradona','CAM', 'Argentina'),
('Pele','CF', 'Brazil'),
('Pogba','CM', 'France'),
('Ramos','CM', ' Spain'),
('Dybella','ST', 'Argentina');

-- ALIAS (It is use for multiple dataset to increase the readibility of the columns)
-- In alias (AS PR) is temporary so if we will use it in the WHERE caluse we will get the error.
Select player_role
AS PR
From cricket;

Select * from Cricket;

Select * from football
where Player_ID > 5;

-- Joins (Clause): In SQL use to combine two or more rows based on their relations.
-- Types of joins 
-- 1. Inner join : 
-- 2. Outer joins :  
-- it is classified into 3 types
-- 2.1 Left Outer joins
-- 2.2 Right Outer joins
-- 2.2 Full Outer joins


CREATE DATABASE Company;
USE Company;
Create table Employee (
EID int AUTO_INCREMENT,
ENAME char (100) NOT NULL,
CITY char (100) NOT NULL,
PRIMARY KEY (EID)
);


Create table Department (
DID int AUTO_INCREMENT,
DNAME char (100) NOT NULL,
EID int ,
PRIMARY KEY (DID)
);

INSERT INTO Employee (ENAME, CITY)
VALUE
("Sahil", "Mumbai"),
("Babu Rao", "Kashmir"),
("Roshan", "Hydrabad"),
("Wahid", "Durgapur"),
("Ashlesha", "Mumbai"),
("Naveen", "Andra Pradesh"),
("Kiruva", "Tamil Nadu"),
("Vivek", "Kolhapur")
;

INSERT INTO Department (DNAME, EID)
VALUE
("HR", 5),
("R&D", 7),
("IT", 10),
("Sales", 1),
("Accounts", 3),
("Marketing", 12),
("IT", 2),
("Production", 4),
("IT", 9),
("Q&A", 8)
;

-- INNER JOIN ---->
-- SYNTAX: SELECT col_name(s)
-- 	FROM table_name1
-- 	INNER JOIN table_name2
-- 	ON table_name1.col_name = table_name2.col_name;

	SELECT *
    FROM Employee
    INNER JOIN Department
    ON Employee.EID = Department.EID;
    
    -- The output we will get in which all the data is getting fitted and rest of the 
    -- data will get ignored.
    
    SELECT ENAME
    FROM Employee
    INNER JOIN Department
    ON Employee.EID = Department.EID
    ; -- IT will show only ENAME columes whos have relation with EID
    
    SELECT ENAME, CITY
    FROM Employee
    INNER JOIN Department
    ON Employee.EID = Department.EID
    ; -- IT will show only ENAME and CITY columes whos have relation with EID
    
-- This is the way we can combine two data set when they both are sharing the same Field/Column.

-- LEFT JOIN | LEFT OUTER JOIN ----> 
-- SYNTAX: SELECT col_name(s)
-- 	FROM table_name1
-- 	LEFT JOIN table_name2
-- 	ON table_name1.col_name = table_name2.col_name;

SELECT *
    FROM Employee
    LEFT JOIN Department
    ON Employee.EID = Department.EID;
    -- It will Print all the table 1 values but from table to it will print only the matching values.
    
    
SELECT *
    FROM Employee
    LEFT JOIN Department
    ON Employee.EID = Department.EID
    WHERE CITY = "Mumbai";


-- RIGHT JOIN | RIGHT OUTER JOIN ---> 
-- SYNTAX: SELECT col_name(s)
-- 	FROM table_name1
-- 	RIGHT JOIN table_name2
-- 	ON table_name1.col_name = table_name2.col_name;

SELECT *
    FROM Employee
    RIGHT JOIN Department
    ON Employee.EID = Department.EID;
    
INSERT INTO Employee (ENAME, CITY)
VALUE 
("Arnold", "CA"),
("Tony", "NY");

SELECT Employee.EID , Employee.CITY
    FROM Employee
    RIGHT JOIN Department
    ON Employee.EID = Department.EID;
    
-- FULL OUTER JOIN -----> It is the UNION of LEFT OUTER JOIN AND RIGHT OUTER JOIN (LOJ U ROJ)
-- IT IS GOING TO INCLUDE THE ENTIRE DATA PRESENT IN ONE OR MORE TABLE. IT WILL INCLUDE THE DATA OF TABLE 1 &
-- AND TABLE 2 INCLUDING THE MACCHING THE DATA THAT ARE EXESTING THE BOTH THE TABLE.
-- IN MYSQL THERE IS NO SYNTAX FOR FULL JOIN
-- BUT WE CAN USE IN MICROSOFT SERVER, SQL SERVER, ORACLE AS FULL JOIN/FULL OUTER JOIN

-- SYNTAX: SELECT col_name(s)
-- 	FROM table_name1
-- 	FULL JOIN table_name2
-- 	ON table_name1.col_name = table_name2.col_name;

-- SYNTAX: SELECT col_name(s)
-- 	FROM table_name1
-- 	LEFT JOIN table_name2
-- 	ON table_name1.col_name = table_name2.col_name;
-- UNION
-- SYNTAX: SELECT col_name(s)
-- 	FROM table_name1
-- 	RIGHT JOIN table_name2
-- 	ON table_name1.col_name = table_name2.col_name;

SELECT *
    FROM Employee
    LEFT JOIN Department
    ON Employee.EID = Department.EID
UNION
SELECT *
    FROM Employee
    RIGHT JOIN Department
    ON Employee.EID = Department.EID;

-- By giving the priority to the Department table    

SELECT *
    FROM Department
    LEFT JOIN Employee
    ON Employee.EID = Department.EID
UNION
SELECT *
    FROM Department
    RIGHT JOIN Employee
    ON Employee.EID = Department.EID;
    
-- REVERSING THE LEFT AND RIGHT JOIN
SELECT *
    FROM Department
    RIGHT JOIN Employee
    ON Employee.EID = Department.EID
UNION
SELECT *
    FROM Department
    LEFT JOIN Employee
    ON Employee.EID = Department.EID;

INSERT INTO Employee (ENAME, CITY)
VALUE 
("THOR", "BRK");

SELECT ENAME FROM Employee
UNION 
SELECT DNAME FROM Department;
-- IT has combined all the data of two columns into one column.
-- 

SELECT ENAME, EID FROM Employee
UNION
SELECT DNAME, DID FROM Department;

-- By interchanging the columns 

SELECT ENAME, EID FROM Employee
UNION
SELECT DID, DNAME FROM Department;

SELECT ENAME FROM Employee
UNION ALL
SELECT DNAME FROM Department;
-- UNION ALL will show all the data which are repeated as well, where as union will only show the data without repetation dataset.
