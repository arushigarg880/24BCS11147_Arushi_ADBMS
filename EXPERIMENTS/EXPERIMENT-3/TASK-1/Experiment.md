# Experiment 3 - Task 1

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

Count the number of students per department who scored more than 80, using a `CASE` expression inside `COUNT`.

## Question

Write a query that returns the number of students in each `Department` with `Marks > 80`. Alias the result as `Dept_HighScore_Count`.

The `student` table has the following columns:

- `St_id`
- `St_name`
- `Marks`
- `Department`

## SQL Queries Used

### Count high-scoring students per department

```sql
/* Write a query to count the number of students across departments who has scored more than 80 marks.*/

SELECT Department,
       COUNT(CASE WHEN Marks > 80 THEN 1 ELSE NULL END) AS Dept_HighScore_Count
FROM student
GROUP BY Department
ORDER BY Department;
```

## Output

```text
┌────────────┬──────────────────────┐
│ department │ Dept_HighScore_Count │
├────────────┼──────────────────────┤
│ Biology    │ 0                    │
│ English    │ 0                    │
│ History    │ 3                    │
│ Math       │ 4                    │
│ Physics    │ 4                    │
└────────────┴──────────────────────┘
```

## Output Screenshot

No screenshot provided.

## Image Explanation

The query groups students by `Department`, uses a `CASE` expression to count `Marks > 80`, and returns the `Dept_HighScore_Count` per department.

## Result

The SQL query correctly counts students scoring above 80 per department and produces the expected counts.
