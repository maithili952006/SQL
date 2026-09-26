CREATE TABLE student13(
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grades VARCHAR(5)
);

INSERT INTO student13(roll_no, name, marks, grades)
VALUES
	(1, 'Alice', 85, 'A'),
    (2, 'Bob', 72, 'C'),       -- This row will be deleted by the DELETE statement (marks < 80)
    (3, 'Charlie', 90, 'A'),
    (4, 'David', 65, 'B');

ALTER TABLE student3 RENAME COLUMN name TO full_name;
DELETE FROM STUDENT WHERE marks < 80;
ALTER TABLE student13 DROP COLUmn grades;

SELECT * FROM student13
