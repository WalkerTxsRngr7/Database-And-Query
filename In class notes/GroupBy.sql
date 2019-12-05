USE wg0742700;
GO
--This aggregate query will output a row for each vendor that has
--more than 2000 in avg invoice amts
--the synonym can be used in the order by clause only
--SELECT VendorID, AVG(InvoiceTotal) AS AverageInvoiceAmount
--	FROM Invoices
--	GROUP BY VendorID
--	HAVING AVG(InvoiceTotal) > 2000
--	ORDER BY AverageInvoiceAmount DESC;


--SELECT VendorID, COUNT(*) AS NumberOfInvoices 
--	FROM Invoices
--	GROUP BY VendorID;

--This query selects vendor data. State and city
--and average invoice for each state/city
--SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty,
--	AVG(InvoiceTotal) AS InvoiceAvg
--FROM Invoices JOIN Vendors ON Invoices.VendorID = Vendors.VendorID
--GROUP BY VendorState, VendorCity
--ORDER BY VendorState, VendorCity;

--This query selects vendor data. State and city
--and average invoice for each state/city
--By changing to a left join, we do output city/state with no invoices
--SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty,
--	AVG(InvoiceTotal) AS InvoiceAvg
--FROM Vendors JOIN Invoices ON Vendors.VendorID = Invoices.VendorID
--GROUP BY VendorState, VendorCity
--ORDER BY VendorState, VendorCity;

--This query selects vendor data. State and city
--and average invoice for each state/city
--output only city/state combos with more than 2
SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty,
	AVG(InvoiceTotal) AS InvoiceAvg
FROM Invoices JOIN Vendors ON Invoices.VendorID = Vendors.VendorID
GROUP BY VendorState, VendorCity 
HAVING COUNT(*) >= 2
--ORDER BY VendorState, VendorCity;

