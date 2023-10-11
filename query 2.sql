USE SONU ;

-- INNER JOIN :::
CREATE TABLE Student(
Id int primary KEY,
Name VARCHAR(50)
);

INSERT INTO Student VALUES 
(101,"Adam"),
(102,"Bob"),
(103 ,"Casey");

SELECT * FROM Student;

CREATE TABLE Course(
Id int primary KEY,
Course_Name VARCHAR(50)
);

INSERT INTO Course VALUES 
(102,"ENGLISH"),
(105,"MATH"),
(103 , "Science"),
(104 , "Computer Science");

SELECT * FROM Course;

SELECT *
FROM Student
INNER JOIN Course
ON Student.Id = Course . Id;

-- LEFT JOIN :::

SELECT * 
FROM Student as s
LEFT JOIN Course as c
ON s.Id = c.Id ;

-- RIGHT JOIN :::

SELECT * 
FROM Student as s
RIGHT JOIN Course as c
ON c.Id = s.Id ;

-- FULL JOIN :::

SELECT * 
FROM Student as s
LEFT JOIN Course as c
ON s.Id = c.Id 
UNION
SELECT * 
FROM Student as s
RIGHT JOIN Course as c
ON s.Id = c.Id ;

-- LEFT EXCLUSIVE JOIN ::

SELECT * 
FROM Student as s
LEFT JOIN Course as c
ON s.Id = c.Id 
WHERE c.Id IS  NULL ;

-- RIGHT EXCLUSIVE JOIN :::

SELECT * 
FROM Student as s
RIGHT JOIN Course as c
ON s.Id = c.Id 
WHERE s.Id IS  NULL ;


SELECT * 
FROM Student as s
LEFT JOIN Course as c
ON s.Id = c.Id 
UNION
SELECT * 
FROM Student as s
RIGHT JOIN Course as c
ON s.Id = c.Id 
WHERE s.Id  AND c.Id IS  NULL ;
 
 -- UNION ::::

SELECT * FROM Student
UNION
SELECT * FROM Course ;



