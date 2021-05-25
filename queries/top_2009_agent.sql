-- 19. top_2009_agent.sql: Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.


SELECT MAX(t.totalSales) as MaxSales, t.*
FROM (SELECT 
        SUM(i.total) as totalSales,
        e.*
        FROM employee e 
        INNER JOIN Customer c
            ON e.employeeId = c.supportRepId
        INNER JOIN Invoice i
            ON i.customerId = c.customerId
        WHERE i.invoiceDate like"%2009%"
        GROUP BY e.EmployeeId) t

