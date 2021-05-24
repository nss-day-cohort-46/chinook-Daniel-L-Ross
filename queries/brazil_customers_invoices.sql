-- 3. brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT 
    i.InvoiceId, 
    i.InvoiceDate,
    i.BillingCountry,
    c.FirstName || ' ' || c.LastName as FullName
FROM Invoice i
JOIN Customer c
    ON c.CustomerId = i.CustomerId
    WHERE c.country IS "Brazil";