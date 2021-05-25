-- 27. top_media_type.sql: Provide a query that shows the most purchased Media Type.

SELECT
    name,
    MAX(purchaseCount)
FROM    (SELECT
            m.name,
            COUNT(*) AS purchaseCount
        FROM MediaType m
        INNER JOIN track t on t.mediaTypeId = m.MediaTypeId
        INNER JOIN InvoiceLine il on il.trackId = t.trackId
        GROUP BY m.name)