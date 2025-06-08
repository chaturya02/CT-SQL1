SELECT DISTINCT c.CustomerID
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader h ON c.CustomerID = h.CustomerID
JOIN Sales.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
JOIN Production.Product p ON d.ProductID = p.ProductID
JOIN Person.Address a ON c.CustomerID = a.AddressID
WHERE a.City = 'London' AND p.Name LIKE '%Chai%';
