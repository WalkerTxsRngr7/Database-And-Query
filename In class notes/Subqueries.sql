USE wg0742700;
GO

--this query includes a subquery
--the subquery is executed first by the dbms
--the results are used to complete the outer query
--SELECT InvoiceNumber, InvoiceDate, InvoiceTotal	
--	FROM Invoices
--	WHERE InvoiceTotal > 
--		(SELECT AVG (InvoiceTotal)
--			FROM Invoices)
--	ORDER BY InvoiceTotal DESC;
	

--Inner join 
--SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
--	FROM Invoices JOIN Vendors
--		ON Invoices.VendorID = Vendors.VendorID
--	WHERE VendorState = 'CA'
--	ORDER BY InvoiceDate;

--same query using a subquery
--SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
--	FROM Invoices
--	WHERE VendorID IN
--		(SELECT VendorID
--			FROM Vendors
--			WHERE VendorState = 'CA')
--	ORDER BY InvoiceDate;

--subquery selects all vendor ID's that have invoice
--the NOT IN clause specifies we want all of the other vendors
--SELECT VendorID, VendorName, VendorState
--	FROM Vendors
--	WHERE VendorID NOT IN
--		(SELECT DISTINCT VendorID
--			FROM Invoices);

--restated as a join
--SELECT Vendors.VendorID, VendorName, VendorState
--	FROM Vendors LEFT JOIN Invoices
--		ON Vendors.VendorID = Invoices.VendorID
--	WHERE Invoices.VendorID IS NULL;

--subquery selects average due on our invoices
--primary query selects all invoices where due amount is less than the average
--SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, 
--		InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue
--	FROM Invoices
--	WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0
--	AND InvoiceTotal - PaymentTotal - CreditTotal < 
--		(SELECT AVG(InvoiceTotal - PaymentTotal - CreditTotal)
--			FROM Invoices
--			WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0)
--	ORDER BY InvoiceTotal DESC;

--query that uses the ALL keyword
--our subquery gets the invoice total for vendor id 34
--our outer query gets ALL invoices whose total is greater
SELECT VendorName, InvoiceNumber, InvoiceTotal
	FROM Invoices JOIN Vendors
		ON Invoices.VendorID = Vendors.VendorID
	WHERE InvoiceTotal > ALL
		(SELECT InvoiceTotal
			FROM Invoices
			WHERE VendorID = 34)
	ORDER BY VendorName;