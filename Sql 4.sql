create database Subquery; 
USE Subquery;
CREATE TABLE Boys (Roll int primary key , 
Name varchar(50) , 
Marks int not null
 );
 
INSERT INTO Boys(Roll,Name,Marks)
VALUES
(101,"Anil",78),
(102,"Bhumika",93),
(103,"Chetan",85),
(104,"Dhruv",96),
(105,"Emanule",12),
(106,"Farah",82);

SELECT * FROM Boys;

-- EXERCISE>> get names who score more than class avg ?

SELECT Name ,Marks
FROM Boys
WHERE Marks> (SELECT AVG(Marks)
FROM Boys);

-- Find the names of all Students who have even Roll Number?

SELECT Name ,Roll 
FROM Boys
WHERE Roll IN(SELECT Roll
FROM Boys
WHERE Roll % 2 =0);

SELECT Roll
FROM Boys
WHERE Roll % 2 =0;