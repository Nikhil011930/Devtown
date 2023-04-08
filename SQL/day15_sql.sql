-- If we want to create dataset 
Create Database Country;
USE country;
Create Table India(Name char(50), State char(90) , 
City char (100),Pincode int(9), Address varchar(200),
mobile_No int (10), primary key(Name,state,city,pincode,address));

-- Adding the new column in the table
alter table India 
add Gender char(15);

alter table India
modify mobile_No int(250);

-- Entering the data into the table
insert into india ()
value ("Nikhil",'Maharashtra','Nagpur', 442301, 'Bardi','Male');

-- Droping the column mobile no as we are getting continuous error.
alter table india drop mobile_No;

insert into india ()
value ("Shruthi",'Tamil Naidu','Chennai', 600100, 'Vellicherry','Female');

insert into india ()
value ("rohan",'delhi','delhi', 123456, 'new delhi','Male');

select name, pincode from india;



Create Database University;
use University;
Create table Compsc (ID int not null auto_increment, 
Name char (30) not null, 
Age int unique, Email varchar(200) unique, 
Marks float not null ,
primary key (ID));


insert into compsc(Name, Age, Email, Marks)
values ('Rahul', 25, "rhul@gmail.com",65.5),
('Amit', 24, "amit@gmail.com",90),
('Bimla', 19, "Bimla@gmail.com",30),
('Priya', 18, "Priya@gmail.com",45),
('Sahil', 21, "Sahil@gmail.com",75),
('Ankita', 22, "Ankita@gmail.com",100),
('Ram', 26, "Ram@gmail.com",10),
('Geeta', 17, "Geeta@gmail.com",70);

select * from compsc;

select * from compsc
where Marks>= 60;

-- Deleting the exesting the data
-- Delete --> Soft delete and hard delete 
-- soft delete will delete the data but it will be temporary stored in the data.
-- 0 = False
-- 1 = True

Set SQL_SAFE_UPDATES = 0;
Delete from compsc 
where marks = 75;

select * from compsc
where marks >= 60;

-- ORDER BY (SORT)
-- 1. ASCE and DESC
-- SYNBATX: SELECT col
-- 			from table_name
-- 			order by col_name

-- for AESC
Select marks from compsc order by marks;

-- FOR DESC
Select * From Compsc
order by marks DESC; 

Select * From Compsc
order by marks, name DESC;

Select * From Compsc
order by Age DESC, Email DESC; 

-- MAX & MIN
-- SYNTAX: (MAX) ---> SELECT MAX(col_name) FROM table_name;
-- (MIN) ---> SELECT MIN(col_name) From table_name;

SELECT max(Marks) 
from compsc;

SELECT MIN(MARKS) from Compsc WHERE marks > 70;

select min(name) from compsc;

-- COUNT (number of occurances)

Select Count(marks) from compsc
where Age > 20;

Select AVG(age)
from compsc where Marks > 70;

-- SUM
SELECT SUM(Marks) from compsc;

SELECT SUM(Marks) from compsc
where age > 20 and marks < 80;

-- BETWEEN
select * from compsc 
where marks between 20 and 30;

select * from compsc 
where age between 20 and 30;

select * from compsc 
where age not between 20 and 30;

insert into compsc (Name, Age, Email, Marks)
value
('Noddy', 15, "Noddy@yahoo.com",48),
('Oswal', 16, "Oswal@hotmail.com",58),
('Thor', 29, "Thor@outlook.com",68),
('Oggy', 21, "Oggy@rediffmail.com",38),
('Tom', 28, "Tom@microsoft.com",88),
('Jerry', 23, "Jerry@quick.com",79);

-- Choose only those data whose email is gmail
-- LIKE
SELECT * from Compsc where Email like "%gmail.com%";
SELECT name from Compsc where Email like "%gmail.com%";

-- Select name from table_name where column like '%pattern%';
-- %___ --> ta last wala print hote
-- ____% --> nantar dila tar adhi wali consider kelya jate
-- %___% --> if mit nasen tar doni pn side la deun dyach
-- _name% --> if we have to print the second character
-- 'd%p' --> name start with d and ends with p

-- Joins --> 2 types  0Innet & outer)
-- outer--> left, right, full outer joins

