-- 13. line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT 
    t.Name AS TrackName,
    ar.Name AS ArtistName,
    i.*
FROM InvoiceLine i
INNER JOIN Track t
    ON i.trackId = t.trackId
INNER JOIN Album al
    ON al.albumId = t.albumId
INNER JOIN Artist ar
    ON ar.artistId = al.artistId
