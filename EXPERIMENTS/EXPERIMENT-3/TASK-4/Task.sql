
select e.name ,b.bonus
from Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
where b.bonus<1000 || b.bonus is NULL;
