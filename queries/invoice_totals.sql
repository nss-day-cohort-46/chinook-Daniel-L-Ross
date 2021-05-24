-- 7. invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, 
        -- Country and Sale Agent name for all invoices and customers.

SELECT
    i.total,
    c.FirstName || ' ' || c.LastName as CustomerName,
    c.country,
    e.FirstName || ' ' || e.LastName as SalesAgent
FROM Invoice i
JOIN Customer c
    ON c.customerId = i.customerId
JOIN Employee e
    ON e.employeeId = c.supportRepId
ORDER BY CustomerName