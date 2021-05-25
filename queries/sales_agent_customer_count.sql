-- 21. sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

SELECT
COUNT(c.supportRepId) as customerCount,
e.*
FROM Employee e 
INNER JOIN Customer c ON c.supportRepId = e.employeeId
GROUP BY e.EmployeeId