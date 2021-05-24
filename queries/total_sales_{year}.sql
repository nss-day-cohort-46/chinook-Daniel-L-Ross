-- 9. total_sales_{year}.sql: What are the respective total sales for each of those years?
SELECT Total FROM Invoice

SELECT strftime('%Y', InvoiceDate) AS InvoiceYear, SUM(Total)
FROM Invoice
WHERE InvoiceDate like"%2009%"
OR InvoiceDate like"%2011%"
GROUP BY InvoiceYear