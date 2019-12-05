USE wg0742700;
GO

--SELECT VendorID, InvoiceNumber, InvoiceTotal
--	FROM Invoices AS Inv_Main
--	WHERE InvoiceTotal >
--		(SELECT AVG(InvoiceTotal)
--			FROM Invoices AS Inv_Sub
--			WHERE Inv_Sub.VendorID = Inv_Main.VendorID)
--	ORDER BY VendorID, InvoiceTotal;


--subquery with NOT EXISTS keyword
--our inner query will return all invoices
--our outer query will gather vendors that are not in the all invoices list
--SELECT VendorID, VendorName, VendorState
--	FROM Vendors
--	WHERE NOT EXISTS
--		(SELECT * 
--			FROM Invoices
--			WHERE Invoices.VendorID = Vendors.VendorID);

--in our inner query, we select the top 5 average invoice total vendors
--we join that data with the invoiced table to find the latest invoice
--for each of the top 5 vendors
--SELECT Invoices.VendorID, MAX(InvoiceDate) AS LatestInv, AVG(InvoiceTotal) AS AvgInvoice
--	FROM Invoices JOIN 
--		(SELECT TOP 5 VendorID, AVG(InvoiceTotal) AS AvgInvoice
--			FROM Invoices
--			GROUP BY VendorID
--			ORDER BY AvgInvoice DESC) AS TopVendor
--		ON Invoices.VendorID = TopVendor.VendorID
--	GROUP BY Invoices.VendorID
--	ORDER BY LatestInv DESC;


--use an implicit join
--SELECT DISTINCT VendorName,
--	(SELECT MAX(InvoiceDate) FROM Invoices
--		WHERE Invoices.VendorID = Vendors.VendorID) AS LatestInv
--	FROM Vendors
--	ORDER BY LatestInv DESC;

--CTE = common table expression (temporary table created by the query)
--Create two CTE's, and the
WITH Summary AS
(	
	SELECT VendorState, VendorName, SUM(InvoiceTotal)
			AS SumOfInvoices
		FROM Invoices JOIN Vendors
			ON Invoices.VendorID = Vendors.VendorID
		GROUP BY VendorState, VendorName
),
TopInState AS
(
	SELECT VendorState, MAX(SumOfInvoices) AS SumOfInvoices
		FROM Summary
		GROUP BY VendorState
)
SELECT Summary.VendorState, Summary.VendorName, TopInState.SumOfInvoices
	FROM Summary JOIN TopInState	
		ON Summary.VendorState = = TopInState.VendorState AND
			Summary.SumOfInvoices = TopInState.SumOfInvoices
	ORDER BY Summary.VendorState;