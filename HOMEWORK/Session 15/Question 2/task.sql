-- Inner Joins
SELECT *
FROM student AS s
INNER JOIN course AS c
        ON s.Course_id = c.Course_id;
