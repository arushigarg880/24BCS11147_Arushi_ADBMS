# Experiment 10 - Task 2

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

To write and execute a non-correlated subquery that finds all dishes whose
cost is greater than the average cost of all dishes at the restaurant.

## Problem Statement

Write a query to perform the following operation:

- Find the dishes which cost more than the average cost of all the dishes at
  the restaurant.
- Display `f_name`, `f_cost`, and `f_type` for those dishes.
- Use a subquery on the `food` table.

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

The `ratings` table is not required for this query because the result depends
only on the dish costs stored in the `food` table.

## Concept Used: Non-Correlated Subquery

A non-correlated subquery is an independent query that does not refer to the
outer query. It executes first and returns a single value or a set of values
that is then used by the outer query.

In this problem, the subquery calculates the average cost of all dishes:

```sql
SELECT AVG(f_cost)
FROM food;
```

The outer query compares every dish's `f_cost` with this average. Since the
subquery does not refer to any column from the outer query, it is a
non-correlated subquery.

## SQL Query Used

```sql
SELECT f_name, f_cost, f_type
FROM food
WHERE f_cost > (
    SELECT AVG(f_cost)
    FROM food
);
```

## Query Explanation

The inner query uses the aggregate function `AVG()` to calculate the average
cost of every dish in the `food` table:

```sql
SELECT AVG(f_cost)
FROM food;
```

The outer query selects the dish name, cost, and cuisine type. The `WHERE`
clause keeps only those rows whose cost is greater than the value returned by
the subquery.

The comparison operator is `>` rather than `>=`, so a dish whose cost is
exactly equal to the average cost is not included in the output.

## Expected Output

```text
┌──────────────────┬────────┬──────────┐
│      f_name      │ f_cost │  f_type  │
├──────────────────┼────────┼──────────┤
│ Sushi            │ 20     │ Japanese │
│ Tandoori Chicken │ 15     │ Indian   │
│ Beef Stroganoff  │ 18     │ Russian  │
│ Paella           │ 25     │ Spanish  │
│ Moussaka         │ 16     │ Greek    │
└──────────────────┴────────┴──────────┘
```

## Output Explanation

The subquery first calculates the average cost of all dishes in the
restaurant. The outer query then compares each dish cost with that average.
Only dishes with a cost greater than the average are returned.

The output contains the dish name, its cost, and its cuisine type. The
`ratings` table does not affect the result because no rating information is
needed to compare dish costs.

## Result

The non-correlated subquery was successfully written to find dishes that cost
more than the average cost of all dishes at the restaurant. The query returns
the required `f_name`, `f_cost`, and `f_type` columns.
