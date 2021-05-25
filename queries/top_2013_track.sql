-- 24. top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

SELECT
trackName,
MAX(purchaseCount) as mostPurchased
FROM (SELECT 
            t.name as trackName, 
            COUNT(il.trackId) as purchaseCount
        FROM InvoiceLine il
        INNER JOIN track t ON t.trackid = il.trackid
        INNER JOIN invoice i on i.invoiceId = il.invoiceId
        WHERE i.invoiceDate LIKE "%2013%"
        GROUP BY t.trackId)