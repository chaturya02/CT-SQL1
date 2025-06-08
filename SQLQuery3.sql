SELECT * 
FROM Sales.Customer c
JOIN Person.Address a ON c.CustomerID = a.AddressID
WHERE a.City IN ('Berlin', 'London');