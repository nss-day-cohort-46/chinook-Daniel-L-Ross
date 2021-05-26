-- 23. top_country.sql: Which country's customers spent the most?

SELECT 
top.country,
MAX(top.TotalSales) AS MaxSales
FROM (SELECT
        billingCountry as Country,
        SUM(total) as TotalSales
        FROM Invoice
        GROUP BY billingCountry) top;