# Experiment 3 - Task 3

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

Identify customers who have never placed an order by using a subquery to compare `Customers` and `Orders`.

## Question

Write a query that returns names of customers from `Customers` whose `id` does not appear in the `Orders` table.

## SQL Queries Used

### Find customers who never ordered anything

```sql
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);
```

## Output

```text
| Customers |
|-----------|
| Henry     |
| Max       |
```

## Output Screenshot

No screenshot provided.

## Image Explanation

The query selects names from `Customers` where the `id` is absent from `Orders.customerId`, returning customers without orders.

## Result

The query correctly lists customers who have not placed any orders.
