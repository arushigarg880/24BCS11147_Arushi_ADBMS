# Experiment 4 - Task 3

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

Retrieve product names paired with their order dates by joining the `products` and `orders` tables.

## Question

Write a query that selects `product_name` and `order_date` by joining `products` with `orders` on the appropriate matching column.

## SQL Queries Used

```sql
select p.product_name,o.order_date
from products p
JOIN orders o 
ON p.product_name=o.product_name;
```

## Output

```text
Returns product names that appear in `orders` along with their `order_date` values.
```

## Output Screenshot

![Experiment 4 Task 3 Output](image.png)

## Image Explanation

Screenshot shows the join of `products` and `orders`, displaying product names with matching order dates.

## Result

The join returns the expected product-order pairs.
