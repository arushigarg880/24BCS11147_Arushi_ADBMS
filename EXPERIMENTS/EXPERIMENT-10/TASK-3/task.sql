-- Find dishes whose average rating is at least 4
SELECT f.f_name, f.f_cost, f.f_type
FROM food AS f
WHERE (
    SELECT AVG(CAST(r.f_rating AS DECIMAL(10, 2)))
    FROM ratings AS r
    WHERE r.f_id = f.f_id
) >= 4;
