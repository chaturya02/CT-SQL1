SELECT TOP 1 h.OrderDate, SUM(d.LineTotal) AS Total
FROM Sales.SalesOrderHeader h
JOIN Sales.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
GROUP BY h.OrderDate
ORDER BY Total DESC;