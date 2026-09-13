# Write your MySQL query statement below
select contest_id ,round( Count(distinct user_id)*100/(select count(user_id) from users), 2 )
as percentage
from Register r
group by contest_id
 order by percentage desc , contest_id
