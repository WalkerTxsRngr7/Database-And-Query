USE wg0742700;
GO

--SELECT *
--INTO InvoiceCopy
--FROM Invoices;


--SELECT *
--INTO OldInvoices
--FROM Invoices
--WHERE InvoiceTotal - PaymentTotal - CreditTotal = 0;


--SELECT VendorID, SUM(InvoiceTotal) AS SumOfInvoices
--INTO VendorBalances
--FROM Invoices
--WHERE InvoiceTotal - PaymentTotal - CreditTotal <> 0
--GROUP BY VendorID;
--SELECT * FROM VendorBalances;


--this command will drop the table definition and all data will be deleted
--DROP TABLE InvoiceCopy;


--this will insert a row into the InvoiceCopy table
--the data is supplied in order by column
--INSERT INTO InvoiceCopy
--VALUES (97, '456789', '2016-04-01', 8344.50, 0, 0, 1,
--	'2016-04-30', NULL);

--SELECT * FROM InvoiceCopy ORDER BY VendorID;


--this insert statement adds to InvoiceCopy
--column names are specified elements are in the order of columns
--INSERT INTO InvoiceCopy
--	(VendorID, InvoiceNumber, InvoiceTotal, PaymentTotal,
--	CreditTotal, TermsID, InvoiceDate, InvoiceDueDate)
--VALUES
--	(97, '456789', 8344.50, 0, 0, 1, '2016-04-01', '2016-04-30');

--INSERT INTO InvoiceCopy
--VALUES
--	(95, '111-10098', '2016-04-01', 219.50, 0, 0, 1, '2016-04-30', NULL),
--	(102, '109596','2016-04-01', 22.97, 0, 0, 1, '2016-04-30', NULL),
--	(72, '40319','2016-04-01', 173.38, 0, 0, 1, '2016-04-30', NULL);

