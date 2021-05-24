-- 6. sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. 
        -- The resultant table should include the Sales Agent's full name.

SELECT 
    i.invoiceId,
    i.customerId,
    e.FirstName || ' ' || e.LastName as FullName
FROM Invoice i
JOIN Customer c
    ON c.customerId = i.customerId
JOIN Employee e
    ON e.employeeId = c.supportRepId
ORDER BY FullName