USE wg0742700;
GO

--CREATE VIEW VendorsMin AS 
--	SELECT VendorName, VendorState, VendorPhone	
--	FROM Vendors;

--SELECT * FROM VendorsMin
--WHERE VendorState = 'CA'
--ORDER BY VendorName;


--subquery selects vendors with invoices
--out query builds vendor data for those vendors
--CREATE VIEW VendorShortList AS
--SELECT VendorName, VendorContactLName, 
--	VendorContactFName, VendorPhone
--FROM Vendors
--WHERE VendorID IN (SELECT VendorID FROM Invoices);

--SELECT * FROM VendorShortList;


--CREATE VIEW VendorInvoices AS
--SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal
--FROM Vendors JOIN Invoices
--	ON Vendors.VendorID = Invoices.VendorID;

--SELECT * FROM VendorInvoices;


--a top query that gathers info for our
--top 5 percent in InvoiceTotal
--CREATE VIEW TopVendors AS
--SELECT TOP 5 PERCENT VendorID, InvoiceTotal
--FROM Invoices
--ORDER BY InvoiceTotal DESC;

--SELECT * FROM TopVendors;


--CREATE VIEW OutstandingInvoices
--	(InvoiceNumber, InvoiceDate, InvoiceTotal, BalanceDue)
--AS
--SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, InvoiceTotal - PaymentTotal - CreditTotal	--or AS BalanceDue
--FROM Invoices
--WHERE InvoiceTotal  - PaymentTotal - CreditTotal > 0;

--SELECT * FROM OutstandingInvoices;


--summary query of vendor information
--number of invoices and total of invoice totals
--CREATE VIEW InvoiceSummary AS
--SELECT VendorName, COUNT(*) AS InvoiceQty,
--	SUM(InvoiceTotal) AS InvoiceSum
--FROM Vendors JOIN Invoices
--	ON Vendors.VendorID = Invoices.VendorID
--GROUP BY VendorName;

--SELECT * FROM InvoiceSummary;


--CREATE VIEW VendorsDue
----WITH SCHEMABINDING
--AS
--SELECT InvoiceDate AS Date, VendorName AS Name,
--	VendorContactFName + ' ' + VendorContactLName AS Contact,
--	InvoiceNumber AS Invoice,
--	InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue
--FROM dbo.Vendors JOIN dbo.Invoices
--	ON Vendors.VendorID = Invoices.VendorID
--	WHERE InvoiceNumber IN (SELECT InvoiceNumber FROM OutstandingInvoices);

--SELECT * FROM VendorsDue;


--SELECT sys.tables.name AS TableName,
--sys.schemas.name AS SchemaName
--FROM sys.tables INNER JOIN sys.schemas
--ON sys.tables.schema_id = sys.schemas.schema_id
--ORDER BY TableName;