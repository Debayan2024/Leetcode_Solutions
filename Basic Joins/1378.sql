# Write your MySQL query statement below
SELECT name, unique_id
FROM Employees AS a
LEFT JOIN EmployeeUNI AS b
ON a.id = b.id