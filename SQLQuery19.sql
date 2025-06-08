SELECT h.SalesOrderID, SUM(d.LineTotal) AS Total
FROM Sales.SalesOrderHeader h
JOIN Sales.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
GROUP BY h.SalesOrderID
HAVING SUM(d.LineTotal) > 200;