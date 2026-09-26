-- Make sure you are using your database schema (replace 'college' with your actual schema name if needed)
-- USE college;

-- Drop table first just in case an empty/broken version already exists
DROP TABLE IF EXISTS student5;

-- 1. Create the table correctly
CREATE TABLE student5(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade VARCHAR(5),
    city VARCHAR(50)
);

-- 2. Insert the data
INSERT INTO student5(rollno, name, marks, grade, city)
VALUES
(101, 'anil', 78, 'C', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 92, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi');

-- 3. Verify the data is actually in the table
SELECT * FROM student5;

-- 4. Run the subquery to find max marks for Delhi
SELECT MAX(marks)
FROM (
    SELECT marks 
    FROM student5 
    WHERE city = 'Delhi'
) AS temp;