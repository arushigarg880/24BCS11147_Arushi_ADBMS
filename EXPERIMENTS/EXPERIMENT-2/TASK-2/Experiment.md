# Experiment 2 - Task 2

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

Combine employee names from the `Employee` and `pt_employee` tables using `UNION ALL`, preserving duplicate entries.

## Question

Write a query that outputs a single column of employee names by selecting `emp_name` from `Employee` and `pt_employee`, using `UNION ALL` so duplicate names are retained.

Note: This task intentionally preserves duplicate names.

## SQL Queries Used

### Combine Employee Tables

```sql
SELECT  emp_name FROM Employee
UNION ALL
SELECT  emp_name FROM pt_employee;
```

## Output

```text
Returns employee names from both tables in a single column (`emp_name`), preserving duplicates.
```

## Output Screenshot

No screenshot was provided for this task.

## Image Explanation

This example demonstrates `UNION ALL`: employee names from both tables are combined and duplicates are retained.

## Result

The employee names from Employee and pt_employee were combined successfully using UNION ALL, and duplicate names were retained.