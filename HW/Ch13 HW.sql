USE wg0742700;
GO

CREATE VIEW CustomerAddresses AS
SELECT Customers.CustomerID, EmailAddress, LastName, FirstName, b.Line1 AS BillLine1, b.Line2 AS BillLine2, b.City AS BillCity, b.State AS BillState, b.ZipCode AS BillZip, s.Line1 AS ShipLine1, s.Line2 AS ShipLine2, s.City AS ShipCity, s.State AS ShipState, s.ZipCode AS ShipZip
FROM Customers JOIN Addresses AS b 
	ON Customers.BillingAddressID = b.AddressID
JOIN Addresses AS s 
	ON Customers.ShippingAddressID = s.AddressID;

SELECT * FROM CustomerAddresses;
