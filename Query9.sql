/*
Created by:Sameer
Date : 27-3-25
Query: Tracks That have not been bought
*/
SELECT
t.TrackId,
t.Name AS TrackName

FROM Track AS t
WHERE 
t.TrackId NOT IN 
(SELECT
DISTINCT
i.TrackId
FROM InvoiceLine AS i)
