USE wg0742700;
GO
--SELECT COUNT(OrderID) AS NumberOfOrders, SUM(ShipAmount) AS ShippingAmount
--	FROM Orders;

--SELECT EmailAddress, COUNT(Orders.OrderID) AS NumberOfOrders, 
--		SUM((ListPrice - (ListPrice * (DiscountPercent / 100))) * Quantity) AS Total
--	FROM Products JOIN OrderItems
--		ON Products.ProductID = OrderItems.ProductID
--	JOIN Orders
--		ON OrderItems.OrderID = Orders.OrderID
--	JOIN Customers
--		ON Orders.CustomerID = Customers.CustomerID
--	GROUP BY EmailAddress;

--SELECT ProductName, SUM((ListPrice - (ListPrice * (DiscountPercent / 100))) * Quantity) AS TotalAmountOrdered
--	FROM Products JOIN OrderItems
--		ON Products.ProductID = OrderItems.ProductID
--	GROUP BY ProductName;

SELECT EmailAddress, COUNT(DISTINCT(ProductID)) AS NumberOfItemsOrdered
	FROM Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
	JOIN OrderItems
		ON Orders.OrderID = OrderItems.OrderID
	GROUP BY EmailAddress
	HAVING COUNT(DISTINCT(ProductID)) > 1
	