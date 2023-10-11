CREATE DATABASE XYZ;
USE  XYZ;
CREATE TABLE employee(
Id int primary key,
 NAME VARCHAR(50),
 Salary INT NOT NULL);
 
SELECT * FROM employee;

SHOW TABLES;

INSERT into  employee VALUES (1,"Adam",25000);
INSERT into  employee VALUES (2,"Bob",30000);
INSERT into  employee VALUES (3,"Casey",40000);

