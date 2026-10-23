-- HackerRank Earnings of Employees
SELECT months * salary AS max_total_earnings,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY months * salary
ORDER BY max_total_earnings DESC
LIMIT 1;
