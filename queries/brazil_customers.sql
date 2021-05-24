-- 2. brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT CustomerId, Country, FirstName || ' ' || LastName as FullName from Customer
WHERE Country IS "Brazil";