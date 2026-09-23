CREATE TABLE student0(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade VARCHAR(5),
    city VARCHAR(50)
);

CREATE TABLE dep(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);

INSERT INTO student0
(rollno, name, marks, grade, city)
VALUES
(101, 'anil', 89, 'A', 'pune'),
(102, 'anili', 56, 'B', 'hydrabad'),
(103, 'parth', 90, 'A', 'dlehi'),
(104, 'pranav', 34, 'D', 'mumbai');

-- View distinct cities
SELECT DISTINCT city FROM student0;

SELECT city
FROM student0
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) <= 93
ORDER BY city DESC;

-- Query to find cities where the max mark is >= 90
SELECT city, COUNT(rollno)
FROM student0
GROUP BY city
HAVING MAX(marks) >= 90;

SET SQL_SAFE_UODATES = 0;

UPDATE student0
SET marks = 90
WHERE rollno = 104;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

-- QUERY TO FIND STUDENTS WITH MARKS LESS THAN 90
SELECT * 
FROM student0 
WHERE marks < 90;

-- View all students
SELECT * FROM student0;









