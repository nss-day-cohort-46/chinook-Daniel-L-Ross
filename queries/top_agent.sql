-- 20. top_agent.sql: Which sales agent made the most in sales over all?

SELECT 
t.FirstName || ' ' || t.LastName as FullName,
MAX(t.totalSales) as MaxSales
FROM (SELECT 
        SUM(i.total) as totalSales,
        e.*
        FROM employee e 
        INNER JOIN Customer c
            ON e.employeeId = c.supportRepId
        INNER JOIN Invoice i
            ON i.customerId = c.customerId
        GROUP BY e.EmployeeId) t

