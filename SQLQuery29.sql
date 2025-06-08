SELECT TOP 1 h.CustomerID, COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader h
GROUP BY h.CustomerID
ORDER BY TotalOrders DESC;