-- 22. sales_per_country.sql: Provide a query that shows the total sales per country.

SELECT
billingCountry as Country,
SUM(total) as TotalSales
FROM Invoice
GROUP BY billingCountry