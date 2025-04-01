/*
Created by:Sameer
Date : 27-3-25
Query: Finding the total purchase in cities starting with 'B'
*/
SELECT
BillingCity,
sum(total) AS total
FROM Invoice
WHERE
BillingCity LIKE "B%"
GROUP BY 
BillingCity
ORDER BY BillingCity
