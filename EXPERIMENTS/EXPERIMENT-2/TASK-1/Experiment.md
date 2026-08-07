# Experiment 2 - Task 1

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

Combine the 'Arts' and 'Science' tables using `UNION` to produce a single stacked result, removing duplicate rows.

## Question

Write a `UNION` query that stacks the rows from the 'Arts' table on top of the 'Science' table and returns the combined result with duplicates removed.

Note: `UNION` eliminates duplicate rows by default.

## SQL Queries Used

### Combine Arts and Science Tables

```sql
/* Write a query using union to stack the table 'Arts' over 'Science' and output the final table */
SELECT * FROM Science
union
SELECT * FROM Arts;
```

## Output

```text
Stacks rows from `Science` and `Arts` into a single result, with duplicate rows removed.
```

## Output Screenshot

![Experiment 2 Task 1 Output](image.png)

## Image Explanation

The screenshot shows the UNION query executed in the SQL editor. The result contains the combined rows from both Science and Arts tables in one output table, which verifies that UNION is working correctly.

## Result

The Arts and Science tables were combined successfully using UNION, and the final table was produced as expected.