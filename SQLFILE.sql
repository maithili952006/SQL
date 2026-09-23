CREATE DATABASE college;
USE college;

-- CREATE TABLE student (
-- id INT PRIMARY KEY,
-- name VARCHAR(49), 
-- AGE INT NOT NULL 
-- );

-- INSERT INTO student VALUE(1,"RADHa",26);
-- INSERT INTO student VALUE(2,"RAM",30);

-- SELECT * FROM student;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student1;

INSERT INTO student1
(rollno,name)
VALUES
(101,"karan"),
(102,"Nidhi"),
(103,"Abhi")

INSERT INTO student1 VALUEs(109, "Sham");




