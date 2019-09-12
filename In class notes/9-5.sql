USE wg0742700;
GO
SELECT VendorName, InvoiceNumber, InvoiceTotal
	FROM Vendors FULL JOIN Invoices
		ON Vendors.VendorID = Invoices.VendorID
	ORDER BY VendorName;