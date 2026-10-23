-- Joins Practice-4, Problem 1: product report
SELECT p.product_name,
       c.category_name,
       cu.customer_name,
       o.order_date
FROM orders o
JOIN customers cu ON cu.customer_id = o.customer_id
JOIN products p ON p.product_name = o.product_name
JOIN categories c ON c.category_id = p.category_id;

-- Problem 2: total spent by customer
SELECT cu.customer_name,
       SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers cu ON cu.customer_id = o.customer_id
JOIN products p ON p.product_name = o.product_name
GROUP BY cu.customer_name
ORDER BY total_spent DESC;
