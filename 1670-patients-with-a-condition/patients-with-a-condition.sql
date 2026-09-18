# Write your MySQL query statement below

select * 
from Patients 
where CONDITIONS LIKE ('DIAB1%') 
or
CONDITIONS LIKE ('% DIAB1%')