# Write your MySQL query statement below
SELECT name, bonus 
FROM Employee AS b
LEFT JOIN Bonus AS a
ON b.empId = a.empId
WHERE Bonus<1000 OR Bonus IS NULL