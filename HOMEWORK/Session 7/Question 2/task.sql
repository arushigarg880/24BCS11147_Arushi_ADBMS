-- Full-time employees: employee rows excluding part-time employee rows.
SELECT * FROM employee
EXCEPT
SELECT * FROM pt_employee;
