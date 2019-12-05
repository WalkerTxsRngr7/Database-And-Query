USE wg0742700;
GO

SELECT /*FirstName, LastName, OrderDate, Orders.OrderID, COUNT(LastName) AS NumberOfAffectedCustomers, Line1, Line2, City, State, ZipCode,*/ SUM(ItemPrice) AS TotalAmountSpent
FROM Customers JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
JOIN OrderItems
	ON Orders.OrderID = OrderItems.OrderID
JOIN Addresses
	ON Orders.BillingAddressID = Addresses.AddressID
WHERE ProductID = 2
--ORDER BY LastName;