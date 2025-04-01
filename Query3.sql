/*
Created by:Sameer
Date : 27-3-25
Query: To Find the total revenue by City.
*/

SELECT
BillingCity AS City,
total(total) AS TotalRevenue
FROM Invoice
GROUP BY 
BillingCity
