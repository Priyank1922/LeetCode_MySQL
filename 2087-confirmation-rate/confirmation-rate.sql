# Write your MySQL query statement below
SELECT s.user_id,
       IFNULL(ROUND(SUM(c.action = 'confirmed') / COUNT(c.action), 2), 0.00) 
       AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c 
       ON s.user_id = c.user_id
GROUP BY s.user_id;
