# Write your MySQL query statement below
SELECT a.student_id, a.student_name, b.subject_name, COUNT(c.subject_name) AS attended_exams
FROM Students AS a
CROSS JOIN Subjects AS b
-- in cross join we do not use ON
LEFT JOIN Examinations AS c
ON a.student_id = c.student_id
AND b.subject_name = c.subject_name
GROUP BY a.student_id, a.student_name, b.subject_name
ORDER BY a.student_id, b.subject_name;
/*
INNER JOIN → Only matching rows from both tables
LEFT JOIN/LEFT OUTER JOIN → All rows from left + matching rows from right
RIGHT JOIN/RIGHT OUTER JOIN → All rows from right + matching rows from left
FULL OUTER JOIN→ All rows from both tables; unmatched -> NULL
CROSS JOIN → Every row of A paired with every row of B
SELF JOIN  → A table joined with itself
*/
/*
Execution Order:
1. FROM
2. JOIN
3. ON
4. WHERE
5. GROUP BY
6. HAVING
7. SELECT
8. DISTINCT
9. ORDER BY
10. LIMIT
*/