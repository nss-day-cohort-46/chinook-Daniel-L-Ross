-- 26. top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

SELECT
    a.name,
    COUNT(*) as tracksSold
FROM Artist a
INNER JOIN album on album.artistId = a.artistId
INNER JOIN track on track.albumId = album.albumId
INNER JOIN invoiceLine on invoiceLine.trackid = track.trackid
GROUP BY a.artistId
ORDER BY tracksSold DESC
LIMIT 3
    


artist -> album -> track -> invoiceLine