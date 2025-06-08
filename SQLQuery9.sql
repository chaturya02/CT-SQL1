SELECT * 
FROM Sales.Customer c
LEFT JOIN Sales.SalesOrderHeader o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;