USE wg0742700;
GO

--SELECT COUNT(*) AS NumberOfInvoices, 
--		FORMAT(SUM(InvoiceTotal - PaymentTotal - CreditTotal), 'C') AS TotalDue
--	FROM Invoices
--	WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0;

--SELECT 'After 9/1/2015' AS SelectionDate, COUNT(*) AS NumberOfInvoices, 
--	FORMAT(AVG(InvoiceTotal), 'C') AS AverageInvoiceAmount,
--	FORMAT(SUM(InvoiceTotal),'C') AS TotalInvoiceAmount
--FROM Invoices
--WHERE InvoiceDate > '2015-09-01';

--SELECT 'After 9/1/2015' AS SelectionDate,
--	COUNT(*) AS NumberOfInvoices,
--	MAX(InvoiceTotal) AS HighestInvoiceTotal,
--	MIN(InvoiceTotal) AS LowestInvoiceTotal
--FROM Invoices
--WHERE InvoiceDate > '2015-09-01';

--SELECT * FROM Invoices
--ORDER BY InvoiceTotal DESC;

--SELECT MIN(VendorName) AS FirstVendor,
--	MAX(VendorName) AS LastVendor,
--	COUNT(VendorName) AS NumberOfVendors
--FROM Vendors;

--SELECT COUNT(DISTINCT VendorID) AS NumberOfVendors,
--	COUNT(VendorID) AS NumberOfInvoices,
--	AVG(InvoiceTotal) AS AverageInvoiceAmount,
--	SUM(InvoiceTotal) AS TotalInvoiceAmount
--FROM Invoices
--WHERE InvoiceDate > '2015-09-01';

SELECT VendorID, AVG(InvoiceTotal) AS AverageInvoiceAmount
FROM Invoices
GROUP BY VendorID
HAVING AVG(InvoiceTotal) > 2000
ORDER BY AverageInvoiceAmount DESC;