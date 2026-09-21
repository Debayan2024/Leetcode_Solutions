# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years), 2) AS average_years
FROM Project AS a
LEFT JOIN Employee AS b
ON a.employee_id = b.employee_id
GROUP BY project_id