USE wg0742700;
GO

--INSERT INTO Categories
--VALUES('Cases')
--SELECT *
--FROM Categories


--UPDATE Categories
--SET CategoryName = 'Guitar Cases'
--WHERE CategoryName = 'Cases';

--SELECT *
--FROM Categories;


--INSERT INTO Products
--	(CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded)
--VALUES (4, 'dgx_680', 'Yamaha DGX 680 102-Key Digital Piano', 'Long description to come', 799.99, 0, '2019-10-01 09:50:00')
--SELECT *
--FROM Products 
--WHERE ProductCode = 'dgx_680'


--UPDATE Products
--SET DiscountPercent = 30
--WHERE ProductCode = 'dgx_680';

--SELECT * FROM Products WHERE ProductCode = 'dgx_680';


INSERT INTO Customers
	(EmailAddress, Password, FirstName, LastName)
VALUES ('john.snyder@microsoft.com',
	'',
	'John',
	'Snyder')

SELECT * FROM Customers WHERE EmailAddress = 'john.snyder@microsoft.com';