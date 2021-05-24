-- 1. non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT CustomerId, Country, FirstName || ' ' || LastName as FullName from Customer
WHERE Country IS NOT "USA";

-- 2. brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT CustomerId, Country, FirstName || ' ' || LastName as FullName from Customer
WHERE Country IS "Brazil";