SELECT DISTINCT a.PostalCode
FROM Sales.SalesOrderDetail d
JOIN Sales.SalesOrderHeader h ON d.SalesOrderID = h.SalesOrderID
JOIN Production.Product p ON d.ProductID = p.ProductID
JOIN Person.Address a ON h.ShipToAddressID = a.AddressID
WHERE p.Name = 'Tofu';