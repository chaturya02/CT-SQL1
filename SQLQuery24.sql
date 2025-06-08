SELECT 
    e.BusinessEntityID,
    ep.FirstName + ' ' + ep.LastName AS EmployeeName,
    sp.FirstName + ' ' + sp.LastName AS SupervisorName
FROM HumanResources.Employee e
JOIN HumanResources.Employee s ON e.OrganizationNode.GetAncestor(1) = s.OrganizationNode
JOIN Person.Person ep ON e.BusinessEntityID = ep.BusinessEntityID
JOIN Person.Person sp ON s.BusinessEntityID = sp.BusinessEntityID;
