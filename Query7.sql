/*
Created by:Sameer
Date : 27-3-25
Query: Top 5 customers
*/
SELECT 
c.CustomerId,
c.FirstName,
c.LastName,
sum(i.total)
FROM Customer AS c
INNER JOIN Invoice AS i ON i.CustomerId = c.CustomerId
GROUP BY 
c.CustomerId
ORDER BY 
sum(i.total) DESC
LIMIT 5
