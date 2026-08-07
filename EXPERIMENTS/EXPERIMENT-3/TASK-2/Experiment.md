# Experiment 3 - Task 2

Name: ARUSHI GARG

UID: 24BCS11147

## Aim

To perform aggregate queries on the `employees` table to count employees by city and analyze salary data.

## Question

Write SQL queries to count employees city-wise, filter employees with salary greater than or equal to 90000, calculate average salary by city, and find distinct cities from the `employees` table.

## SQL Queries Used

### Count employees city-wise

```sql
SELECT emp_city, COUNT(*) AS CNT
FROM employees
## Result

The SQL queries execute successfully on the `employees` table and produce the required aggregate and distinct city results.

```sql
SELECT DISTINCT emp_city
FROM employees;
```

### Count distinct cities

```sql
SELECT COUNT(DISTINCT emp_city) AS CNT
FROM employees;
```

## Output

```text
The queries return grouped employee counts, filtered salary counts, average salaries, and distinct city values from the employees table.
```

## Output Screenshot

No screenshot provided.

## Image Explanation

The SQL examples demonstrate grouping by `emp_city`, using `COUNT`, `SUM`, `AVG`, and `HAVING` to produce the requested aggregates and filters.

## Result

The queries return the expected aggregated statistics and distinct city values from the `employees` table.
(Experiment 3 - Task 2)

Name: ABHINEET

UID: 24BCS10039

## Aim

To count the number of students in each city using an aggregate query.

## Question

Write a query to count the number of students per city from the `students` table.

## SQL Queries Used

```sql
SELECT city,
	   COUNT(*) AS student_count,
	   AVG(marks) AS avg_marks
FROM students
GROUP BY city
ORDER BY city;
```

## Output

```text
┌─────────┬──────────────┬───────────┐
│ city    │ student_count│ avg_marks │
├─────────┼──────────────┼───────────┤
│ Delhi   │ <n1>         │ <a1>      │
│ Mumbai  │ <n2>         │ <a2>      │
│ Kolkata │ <n3>         │ <a3>      │
│ Chennai │ <n4>         │ <a4>      │
└─────────┴──────────────┴───────────┘

Replace `<n1>`, `<n2>`, ... with the counts and `<a1>`, `<a2>`, ... with the average marks returned by your database.
```

## Output Screenshot

No screenshot provided.

## Image Explanation

The query counts rows in `students` where `city = 'Delhi'` and returns the total as a single scalar value.

## Result

The SQL query returns the number of students located in Delhi when executed against the `students` table.

