-- Right Joins: requested JOIN and RIGHT JOIN queries.
SELECT *
FROM student AS s
JOIN course AS c ON s.Course_id = c.Course_id;

SELECT *
FROM student AS s
RIGHT JOIN course AS c ON s.Course_id = c.Course_id;
