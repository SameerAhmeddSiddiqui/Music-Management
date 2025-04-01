/*
Created by:Sameer
Date : 27-3-25
Query: To Find songs longer than 10 minutes 
*/
SELECT
Name,
Milliseconds
FROM Track
WHERE Milliseconds > 600000
ORDER BY 
Milliseconds
