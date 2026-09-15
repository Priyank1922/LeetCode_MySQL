# Write your MySQL query statement below

select customer_id
from Customer
group by customer_id
having count(DISTINCT product_key) = (
    select count(product_key) from product
)
