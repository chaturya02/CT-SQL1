SELECT DISTINCT c.CustomerID
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader o ON c.CustomerID = o.CustomerID
JOIN Sales.SalesOrderDetail d ON o.SalesOrderID = d.SalesOrderID
JOIN Production.Product p ON d.ProductID = p.ProductID
WHERE p.Name = 'Tofu';