SELECT TOP 10 cr.Name AS Country, SUM(so.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader so
JOIN Person.Address a ON so.BillToAddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr ON sp.CountryRegionCode = cr.CountryRegionCode
GROUP BY cr.Name
ORDER BY TotalSales DESC;
