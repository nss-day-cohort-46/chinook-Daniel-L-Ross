-- 1. non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT CustomerId, Country, FirstName || ' ' || LastName as FullName from Customer
WHERE Country IS NOT "USA";