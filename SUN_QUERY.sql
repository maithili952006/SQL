CREATE TABLE student9s(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
dept_id INT
);

INSERT INTO student9s (student_id, student_name,dept_id)
VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 4),
(104, 'David', NULL);

SELECT *
FROM(
	SELECT student_id, student_name, dept_id
    FROM student9s
) AS sub
WHERE sub.student_id % 2 = 0;

SELECT * 
FROM students
WHERE student_id IN (
    SELECT student_id 
    FROM students 
    WHERE student_id % 2 = 0
);

SELECT rollno 
FROM student 
WHERE rollno % 2 = 0;

