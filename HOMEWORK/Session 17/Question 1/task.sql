-- Combining tables with SQL (rearranged)
SELECT *
FROM employee
JOIN department
  ON employee.employee_id = department.employee_id;
