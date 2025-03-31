/*
Created by:Sameer
Date : 27-3-25
Query: TO List all tracks by their artist,in order of the ArtistId.
*/

SELECT
ar.Name,
t.Name AS TrackName,
ar.ArtistId


FROM Track AS t
INNER JOIN Album AS a ON a.AlbumId = t.AlbumId 
INNER JOIN Artist as ar ON ar.ArtistId = a.ArtistId

ORDER BY 
ar.ArtistId
