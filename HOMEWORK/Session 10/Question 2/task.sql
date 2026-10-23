-- Count Veg dishes by cuisine
SELECT cuisine,
       COUNT(CASE WHEN category = 'Veg' THEN 1 END) AS veg_count
FROM Orders
GROUP BY cuisine;
