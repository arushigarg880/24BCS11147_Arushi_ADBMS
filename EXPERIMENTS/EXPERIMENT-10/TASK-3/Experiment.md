# Experiment 10 - Task 3

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

To write and execute a correlated subquery that finds highly rated dishes
whose average rating is greater than or equal to 4.

## Problem Statement

Write a query to display the details of a dish only when its average rating
is greater than or equal to 4.

The output must contain only the following columns:

- `f_name`
- `f_cost`
- `f_type`

The query should use a subquery to calculate the average rating for each
dish.

## Table Structure

### Food Table

The `food` table contains the following columns:

| Column | Data Type | Description |
|--------|-----------|-------------|
| `f_id` | `INT` | Unique identifier of a dish |
| `f_name` | `TEXT` | Name of the dish |
| `f_cost` | `INT` | Cost of the dish |
| `f_type` | `TEXT` | Cuisine type of the dish |

### Ratings Table

The `ratings` table contains the following columns:

| Column | Data Type | Description |
|--------|-----------|-------------|
| `f_id` | `INT` | Identifier of the rated dish |
| `f_rating` | `TEXT` | Rating given to the dish |

The `f_id` column connects the `food` table with the `ratings` table.

## Concept Used: Correlated Subquery

A correlated subquery is a subquery that refers to a column from the outer
query. Unlike an independent subquery, it is evaluated for each row selected
by the outer query.

In this problem, the subquery refers to `f.f_id` from the outer `food` query:

```sql
WHERE r.f_id = f.f_id
```

This condition ensures that the average rating is calculated only for the
current dish being considered by the outer query. The outer query then keeps
the dish when the calculated average is at least 4.

## SQL Query Used

```sql
SELECT f.f_name, f.f_cost, f.f_type
FROM food AS f
WHERE (
    SELECT AVG(CAST(r.f_rating AS DECIMAL(10, 2)))
    FROM ratings AS r
    WHERE r.f_id = f.f_id
) >= 4;
```

## Query Explanation

The outer query reads the dish details from the `food` table and gives it the
alias `f`.

For each dish, the correlated subquery searches the `ratings` table for rows
having the same `f_id` as the current food row. It then calculates the
average rating using `AVG()`:

```sql
SELECT AVG(CAST(r.f_rating AS DECIMAL(10, 2)))
FROM ratings AS r
WHERE r.f_id = f.f_id;
```

The `CAST()` converts the rating value to a numeric type before calculating
the average. This is useful when `f_rating` is stored as a text column.

The condition `>= 4` includes dishes whose average rating is exactly 4 as
well as dishes whose average rating is greater than 4. Dishes with no
ratings have a `NULL` average and do not satisfy the condition.

## Expected Output

```text
┌─────────────────┬────────┬─────────────┐
│     f_name      │ f_cost │   f_type    │
├─────────────────┼────────┼─────────────┤
│ Pizza           │ 10     │ Continental │
│ Fried Rice      │ 12     │ Chinese     │
│ Pad Thai        │ 14     │ Thai        │
│ Sushi           │ 20     │ Japanese    │
│ Beef Stroganoff │ 18     │ Russian     │
│ Paella          │ 25     │ Spanish     │
└─────────────────┴────────┴─────────────┘
```

## Output Explanation

The correlated subquery calculates the average rating separately for every
dish by matching the dish identifier in `ratings` with the current dish
identifier in `food`.

Only dishes with an average rating of 4 or more are returned. The output
contains exactly the three requested columns: dish name, dish cost, and
cuisine type.

## Result

The correlated subquery was successfully written to identify highly rated
dishes. It returns the details of every dish whose average rating is greater
than or equal to 4.
