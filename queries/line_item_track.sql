-- 12. line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT i.*, t.name 
FROM InvoiceLine i
INNER JOIN track t
WHERE t.trackId = i.trackId