SELECT soh.SalesPersonID, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
WHERE c.AccountNumber LIKE '[A][A-O]%'
GROUP BY soh.SalesPersonID;
