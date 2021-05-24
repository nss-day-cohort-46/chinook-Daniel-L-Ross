-- 1. non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT CustomerId, Country, FirstName || ' ' || LastName as FullName from Customer
WHERE Country IS NOT "USA";

-- 2. brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT CustomerId, Country, FirstName || ' ' || LastName as FullName from Customer
WHERE Country IS "Brazil";

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

-- 4. sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

SELECT * FROM Employee
WHERE Title IS "Sales Support Agent";


-- 5. unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing 
        -- countries from the Invoice table.

SELECT DISTINCT BillingCountry
FROM Invoice
ORDER BY BillingCountry;

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