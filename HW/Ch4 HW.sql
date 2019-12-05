USE wg0742700;
GO

SELECT FirstName, LastName, OrderDate, ProductName AS Product, ItemPrice AS Price, Quantity
	FROM Customers
	JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
	JOIN OrderItems
		ON Orders.OrderID = OrderItems.OrderID
	JOIN Products
		ON OrderItems.ProductID = Products.ProductID
	ORDER BY LastName;