CREATE database COLLEGE;
USE COLLEGE;
DROP TABLE  Student;

CREATE TABLE Student (Roll int primary key , 
Name varchar(50) , 
Marks int not null,
Grade varchar(3),
City varchar(50)
 );

INSERT into Student values(1,"SONU",26);
INSERT into Student values(2,"TANU",18);
INSERT into Student values(3,"MONA",17);
INSERT into Student values(4,"SNEHA",20);

INSERT INTO Students(Roll,Name,Marks,Grade,City)
VALUES
(101,"Anil",78,"C","Pune"),
(102,"Bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"B","Mumbai"),
(104,"Dhruv",96,"A","Delhi"),
(105,"Emanule",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");

SELECT * FROM Student;
SELECT Name,Marks From Student;
SELECT distinct City FROM Student;
SELECT * FROM Student WHERE Marks >=80 and City = "Mumbai";
SELECT * FROM Student WHERE Marks+ 10 >100;
SELECT * FROM Student WHERE Marks  Between 80 AND 90;
SELECT * FROM Student WHERE City IN ("Mumbai","Delhi");
SELECT * FROM Student WHERE City  NOT IN ("Mumbai","Delhi"); 

SELECT * FROM Student LIMIT 3;
SELECT Marks   FROM Student LIMIT 3;

SELECT * FROM Student ORDER BY Name AND Marks ASC;
SELECT * FROM 
Student WHERE Marks  > 80 ORDER BY Name AND Marks DESC
LIMIT 3;

-- Aggreation Function
 
SELECT max(Marks) FROM Student;
SELECT min(Marks) FROM Student;
SELECT count(Name) FROM Student;
SELECT avg(Marks) FROM Student;
SELECT sum(Marks) FROM Student;

-- --Group By clause:

SELECT City , count(Name), MAX(Marks)
FROM Student
GROUP BY City;

-- --Exercise  :

SELECT City , AVG(Marks)
FROM Student
GROUP BY City
ORDER BY AVG(Marks) DESC;

-- --Exercise 2:  

SELECT Grade,COUNT(Name)
FROM Student
GROUP BY Grade
ORDER BY Grade ASC; 

-- Exercise 3:
SELECT City,COUNT(Name)
FROM Student
GROUP BY City
HAVING MAX(Marks)>90
ORDER BY City ASC;

-- --Update Clause: 

UPDATE Student
SET Grade = "O"
WHERE Grade = "A";

UPDATE Student
SET Marks = Marks - 1;

SELECT * FROM Student;

DELETE  FROM  Student
WHERE Marks < 33;


-- FOREIGN KEY-- 

CREATE TABLE Dept(
Id Int Primary key , 
Name varchar(50)
);
INSERT INTO Dept 
VALUES 
(101,"CSE"),
(102,"IT");

UPDATE Dept
SET Id = 103
WHERE Id = 102;

DELETE FROM Dept
WHERE Id =102;

SELECT * FROM Dept;

CREATE TABLE Teacher(
Id int primary key ,
Name varchar(50) , 
Dept_id INT ,
FOREIGN KEY (Dept_id)  
REFERENCES Dept(Id)
ON UPDATE CASCADE 
ON DELETE CASCADE
);
INSERT INTO Teacher
VALUES 
(1,"PALLAV",101),
(2,"SUMIT",102);

SELECT * FROM Teacher;

-- ALTER COMMAND --
SELECT * FROM Students;

ALTER TABLE Students
ADD column Age INT NOT NULL DEFAULT 19;

ALTER TABLE Student
CHANGE  Age st_age INT NOT NULL;
 
ALTER TABLE Student
RENAME   TO  Students;

ALTER TABLE Students
DROP COLUMN age;

-- TRUNCATE-- 
TRUNCATE TABLE Students;

-- EXERCISE  3:
SELECT * FROM Students;
ALTER TABLE Students
DROP COLUMN Grade;

ALTER TABLE Students
CHANGE COLUMN Names Full_Names VARCHAR(50);

DELETE FROM  Students
WHERE Marks < 80 ;


-- EXERCISE >>>FIND THE MAXIMUM MARKS of STUDENTS from DELHI ???
SELECT * FROM students;

SELECT MAX(Marks) 
FROM students
WHERE City = "Delhi";

SELECT Full_Names ,Marks,City
FROM students
WHERE Marks IN (SELECT MAX(Marks) 
FROM students
WHERE City = "Delhi");

-- VIEW ::::

CREATE VIEW view1 AS
SELECT Roll,Full_Names,Marks FROM Students;

SELECT * FROM view1;











SHOW TABLES; 


