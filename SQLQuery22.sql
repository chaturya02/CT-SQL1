SELECT p.FirstName + ' ' + p.LastName AS ContactName, COUNT(so.SalesOrderID) AS TotalOrders
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader so ON c.CustomerID = so.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
GROUP BY p.FirstName, p.LastName
HAVING COUNT(so.SalesOrderID) > 3;
