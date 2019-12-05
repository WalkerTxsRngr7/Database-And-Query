USE wg0742700;
GO
--Select from vendors
--format the contact name as last name with a comma then first initial
--followed by a period
--Use only the first 8 characters of teh phone number for display
--select only vendors in area code 559
--SELECT VendorName, VendorContactLName + ', ' + Left(VendorContactFName, 1) + '.' AS ContactName,
--	RIGHT(VendorPhone, 8) AS Phone
--FROM Vendors
--WHERE SUBSTRING(VendorPhone, 2, 3) = '559'
--ORDER BY VendorName;


--SELECT * FROM Categories ORDER BY CategoryID;