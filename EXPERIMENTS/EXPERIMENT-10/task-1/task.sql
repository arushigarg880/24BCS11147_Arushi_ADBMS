-- Find the 2nd and 3rd highest distinct salaries
SELECT salary
FROM (
    SELECT DISTINCT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employee
) AS ranked_salaries
WHERE salary_rank IN (2, 3)
ORDER BY salary DESC;
