-- 13. line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.*, t.name
FROM InvoiceLine i
INNER JOIN track t
WHERE t.trackId = i.trackId
JOIN Album al
ON al.albumId = t.albumId
JOIN Artist ar
ON ar.artistId = al.artistId