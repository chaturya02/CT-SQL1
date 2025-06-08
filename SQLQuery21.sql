SELECT c.CustomerID, p.FirstName + ' ' + p.LastName AS ContactName, COUNT(o.SalesOrderID) AS OrderCount
FROM Sales.Customer c
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN Sales.SalesOrderHeader o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, p.FirstName, p.LastName;