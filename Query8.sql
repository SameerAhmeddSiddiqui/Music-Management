/*
Created by:Sameer
Date : 27-3-25
Query: Sorting tracks by Genre
*/
SELECT
g.GenreId,
g.Name AS Genre,
t.Name AS TrackName

FROM Genre AS g
INNER JOIN Track as t ON g.GenreId = t.GenreId
GROUP BY 
t.Name
ORDER BY 
g.GenreId
