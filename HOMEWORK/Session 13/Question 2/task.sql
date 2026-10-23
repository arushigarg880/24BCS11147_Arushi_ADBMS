-- Project - Left Join Two Tables
SELECT *
FROM Customer c
LEFT JOIN Purchase p ON c.Customer_id = p.Customer_id;
