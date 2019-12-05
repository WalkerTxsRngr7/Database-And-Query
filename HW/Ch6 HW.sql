USE wg0742700;
GO

--SELECT ProductName, ListPrice
--	FROM Products
--	WHERE ListPrice >
--		(SELECT AVG(ListPrice) AS AvgListPrice
--			FROM Products)
--	ORDER BY ListPrice DESC

--SELECT CategoryName
--	FROM Categories
--	WHERE NOT EXISTS
--		(SELECT CategoryID
--			FROM Products
--			WHERE Products.CategoryID  = Categories.CategoryID)

--SELECT ProductName, DiscountPercent
--	FROM Products 
--	WHERE DiscountPercent != (SELECT DiscountPercent
--		FROM Products
--		GROUP BY DiscountPercent
--		HAVING COUNT(*) > 1)
		

SELECT DISTINCT (FirstName  + ' ' + LastName) AS FullName, EmailAddress,  
		(SELECT MIN(OrderDate) FROM Orders
			WHERE Orders.CustomerID = Customers.CustomerID) AS OldestOrder
	FROM Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
	ORDER BY OldestOrder DESC;