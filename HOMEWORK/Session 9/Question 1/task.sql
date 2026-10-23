-- ON DELETE SET NULL / ON UPDATE SET NULL
DELETE FROM Customers
WHERE customer_name = 'John Doe';

SELECT *
FROM Orders;
