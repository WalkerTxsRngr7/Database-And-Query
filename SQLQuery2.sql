USE wg0742700
GO
--SELECT ProductCode, ProductName, ListPrice, DiscountPercent FROM Products ORDER BY ListPrice DESC
--SELECT CONCAT(LastName, ', ', FirstName) AS FullName FROM Customers WHERE LastName LIKE '[M-Z]%' ORDER BY LastName
--SELECT ProductName, ListPrice, DateAdded FROM Products WHERE ListPrice BETWEEN 500 and 2000 ORDER BY DateAdded DESC 
--SELECT ProductName, ListPrice, DiscountPercent, ListPrice * (DiscountPercent / 100) AS DiscountAmount, ListPrice - (ListPrice * (DiscountPercent / 100)) AS DiscountPrice FROM Products ORDER BY DiscountPrice DESC
SELECT OrderID, OrderDate, ShipDate FROM Orders WHERE ShipDate IS NULL