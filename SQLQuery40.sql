SELECT pv.BusinessEntityID, COUNT(DISTINCT ProductID) AS ProductCount
FROM Purchasing.ProductVendor pv
GROUP BY pv.BusinessEntityID;