SELECT 
    mgr.BusinessEntityID AS ManagerID,
    COUNT(emp.BusinessEntityID) AS TeamSize
FROM HumanResources.Employee emp
JOIN HumanResources.Employee mgr ON emp.OrganizationNode.GetAncestor(1) = mgr.OrganizationNode
GROUP BY mgr.BusinessEntityID
HAVING COUNT(emp.BusinessEntityID) > 4;
