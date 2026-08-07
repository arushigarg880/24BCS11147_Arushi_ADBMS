-- Write a query to do the following:

-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.

select * 
from student s
FULL OUTER JOIN course c
ON s.Course_id=c.Course_id;