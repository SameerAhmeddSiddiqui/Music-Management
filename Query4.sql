/*
Created by:Sameer
Date : 27-3-25
Query: To Find the top 10 tracks by sales and the amount generated 
*/
SELECT
t.Name,
total(i.UnitPrice) AS RevenueGenerated

FROM InvoiceLine as i
INNER JOIN Track as t ON t.TrackId = i.TrackId
GROUP BY
t.Name
ORDER BY 
total(i.UnitPrice) DESC
LIMIT 10
