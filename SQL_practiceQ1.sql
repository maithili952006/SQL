CREATE DATABASE Infosis;
USE infosis;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee
(id,name,salary)
VALUES
(1,"adam",20000),
(2,"ali",30000),
(3,"faran",200030);

CREATE TABLE temp1(
	id INT UNIQUE
);

CREATE TABLE emp(
	id INT, salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES(101);
SELECT * FROM emp;

INSERT INTO temp1 VALUE(101);
INSERT INTO temp1 VALUE(210);

SELECT * FROM temp1;
SELECT * FROM employee;