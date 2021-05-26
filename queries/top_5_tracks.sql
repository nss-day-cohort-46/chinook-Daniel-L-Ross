-- 25. top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    t.name as trackName, 
    COUNT(il.trackId) as purchaseCount
FROM InvoiceLine il
INNER JOIN track t ON t.trackid = il.trackid
GROUP BY il.trackId
ORDER BY purchaseCount DESC
LIMIT 5
