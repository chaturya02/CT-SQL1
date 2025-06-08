SELECT so.SalesOrderID, a.City, cr.Name AS Country
FROM Sales.SalesOrderHeader so
JOIN Person.Address a ON so.ShipToAddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE cr.Name = 'Canada';
