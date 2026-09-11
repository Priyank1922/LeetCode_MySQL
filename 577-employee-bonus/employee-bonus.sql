# Write your MySQL query statement below
select e.name , b.bonus
from Employee e left join Bonus b
on e.EmpId = b.EmpId
where b.bonus is null or b.bonus < 1000