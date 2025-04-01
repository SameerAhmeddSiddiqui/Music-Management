/*
Created by:Sameer
Date : 27-3-25
Query: Total length of each Playlist in minutes
*/
SELECT
pt.PlaylistId,
p.Name,
round((sum(t.Milliseconds)/60000)) AS [Total Time In Minutes]
FROM PlaylistTrack AS pt
INNER JOIN Playlist AS p ON pt.PlaylistId = p.PlaylistId
INNER JOIN Track as t ON pt.TrackId = t.TrackId
GROUP BY 
p.Name
ORDER BY 
pt.PlaylistId
