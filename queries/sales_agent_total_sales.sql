-- 18. sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT 
SUM(i.total),
e.*
FROM employee e 
INNER JOIN Customer c
ON e.employeeId = c.supportRepId
INNER JOIN Invoice i
on i.customerId = c.customerId
GROUP BY e.EmployeeId