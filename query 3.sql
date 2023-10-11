USE XYZ;
drop table employees;
SELECT * FROM Employees;

CREATE TABLE Employees(
Id int primary KEY,
Name VARCHAR(50),
Manager_Id int );

INSERT INTO Employees(Id,Name,Manager_Id) VALUES 
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);

-- SELF JOIN :::

SELECT a.name as  Manager_name ,b.name
FROM Employees as a
join Employees as b
ON a.Id = b.Manager_Id;
