# Write your MySQL query statement below
/*
Triangle testing conditions:
if a+b>c:
print(yes)
elif a+c>b:
print(yes)
elif b+c>a:
print(yes)
else:
print(no)
*/
SELECT x, y, z,
       CASE 
           WHEN x + z > y
           AND x + y > z
           AND y + z > x
           THEN 'Yes'
           ELSE 'No'
       END AS triangle
FROM Triangle;