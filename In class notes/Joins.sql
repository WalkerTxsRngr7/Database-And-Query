USE wg0742700;
GO
--SELECT VendorName, InvoiceNumber, InvoiceTotal
--	FROM Vendors FULL JOIN Invoices
--		ON Vendors.VendorID = Invoices.VendorID
--	ORDER BY VendorName;

--UNION operation
--combines data from two tables
--	SELECT 'Active' AS Source, InvoiceNumber, InvoiceTotal
--		FROM Invoices
--		WHERE InvoiceTotal-PaymentTotal-CreditTotal > 0
--UNION
--	SELECT 'Paid' AS Source, InvoiceNumber, InvoiceDate, InvoiceTotal
--		FROM Invoices
--		WHERE InvoiceTotal - PaymentTotal - CreditTotal <= 0
--		ORDER BY InvoiceTotal DESC;

	SELECT FirstName, LastName
		FROM Customers
EXCEPT
	SELECT FirstName, LastName
		FROM Administrators
ORDER BY LastName;
