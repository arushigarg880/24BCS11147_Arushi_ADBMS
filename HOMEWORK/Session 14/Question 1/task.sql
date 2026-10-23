-- Cities With Completed Trades (same problem link as Session 12)
SELECT u.city, COUNT(*) AS total_orders
FROM trades t
JOIN users u ON u.user_id = t.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;
