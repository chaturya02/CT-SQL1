SELECT p.Name, SUM(d.LineTotal) AS Revenue
FROM Production.Product p
JOIN Sales.SalesOrderDetail d ON p.ProductID = d.ProductID
GROUP BY p.Name;