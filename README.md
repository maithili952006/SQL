# SQL
# 🚀 SQL Practice & Learning Repository

Welcome to my SQL practice repository! This collection contains various SQL scripts, table schemas, and query exercises ranging from basic database setup to advanced filtering, aggregation, and grouping operations.

---

## 📂 Repository Structure

The scripts in this repository cover core SQL concepts using practical examples (such as student databases):

* **Table Creation (`CREATE TABLE`)**: Defining schemas with primary keys and appropriate data types (`INT`, `VARCHAR`).
* **Data Insertion (`INSERT INTO`)**: Populating tables with sample records.
* **Filtering (`WHERE`, `DISTINCT`)**: Extracting unique values and specific rows based on conditions.
* **Aggregation & Grouping (`GROUP BY`, `HAVING`, `COUNT`, `AVG`, `MAX`)**: Summarizing data and filtering grouped results.
* **Sorting (`ORDER BY`)**: Organizing query outputs in ascending or descending order.

---

## 💻 Sample Code Preview

Here is an example of the structured queries and schema design included in this repo:

```sql
-- Create a student table schema
CREATE TABLE student0 (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade VARCHAR(5),
    city VARCHAR(50)
);

-- Insert sample records
INSERT INTO student0 (rollno, name, marks, grade, city)
VALUES
(101, 'anil', 89, 'A', 'pune'),
(102, 'anili', 56, 'B', 'hydrabad'),
(103, 'parth', 90, 'A', 'dlehi'),
(104, 'pranav', 34, 'D', 'mumbai');

-- Find average marks grouped by city
SELECT city, AVG(marks) AS avg_marks
FROM student0
GROUP BY city
ORDER BY AVG(marks) DESC;
