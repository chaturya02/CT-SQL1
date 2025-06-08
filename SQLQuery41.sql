SELECT TOP 10 h.CustomerID, SUM(d.LineTotal) AS Revenue
FROM Sales.SalesOrderHeader h
JOIN Sales.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
GROUP BY h.CustomerID
ORDER BY Revenue DESC;