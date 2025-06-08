SELECT so.SalesOrderID
FROM Sales.SalesOrderHeader so
JOIN Sales.Customer c ON so.CustomerID = c.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN Person.PersonPhone pp ON p.BusinessEntityID = pp.BusinessEntityID
WHERE pp.PhoneNumber IS NULL OR pp.PhoneNumber NOT LIKE '%fax%';
