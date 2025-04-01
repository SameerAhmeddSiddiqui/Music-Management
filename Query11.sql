/*
Created by:Sameer
Date : 27-3-25
Query: Customers Who spent more than average
*/

SELECT
c.CustomerId,
c.FirstName || " " || c.LastName AS Fullname,
i.total
FROM Invoice as i
INNER JOIN Customer as c ON i.CustomerId = c.CustomerId
WHERE i.total >
(SELECT
round(AVG(total))
FROM Invoice)
ORDER BY
i.total
