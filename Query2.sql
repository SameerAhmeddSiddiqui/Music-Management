/*
Created by:Sameer
Date : 27-3-25
Query: To count the number of tracks by each artist.
*/

SELECT
ar.ArtistId,
ar.Name,
count(t.name) AS NumberOfTracks



FROM Track AS t
INNER JOIN Album AS a ON a.AlbumId = t.AlbumId 
INNER JOIN Artist as ar ON ar.ArtistId = a.ArtistId

GROUP BY
ar.ArtistId
