-- 8. total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
        -- in select FORMAT strftime

SELECT strftime('%Y', InvoiceDate) AS InvoiceYear, COUNT(InvoiceId)
FROM Invoice
WHERE InvoiceDate like"%2009%"
OR InvoiceDate like"%2011%"
GROUP BY InvoiceYear