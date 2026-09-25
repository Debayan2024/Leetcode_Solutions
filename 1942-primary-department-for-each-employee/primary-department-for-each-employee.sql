# Write your MySQL query statement below
/*
Wrong Approach
SELECT a.employee_id, a.department_id
FROM Employee AS a
JOIN Employee AS b
ON a.employee_id = b.employee_id
AND a.department_id = b.department_id
WHERE a.primary_flag = 'Y'
*/
/*
Again wrong
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
*/
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
OR employee_id IN(
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*)=1
)