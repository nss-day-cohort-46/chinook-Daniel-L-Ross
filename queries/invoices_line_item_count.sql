-- 17. invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
COUNT(il.invoiceId) as lineItemCount,
i.*
FROM Invoice i
INNER JOIN invoiceLine il
ON il.invoiceId = i.invoiceId
GROUP BY i.invoiceId