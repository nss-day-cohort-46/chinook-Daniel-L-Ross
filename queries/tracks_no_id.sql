-- 16. tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. 
        -- The result should include the Album name, Media type and Genre.

SELECT 
t.name as trackName,
a.title as album
FROM track t
INNER JOIN album a
ON a.albumId = t.albumId
INNER JOIN
ORDER BY a.title