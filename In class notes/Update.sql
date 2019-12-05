USE wg0742700;
GO

--INSERT INTO InvoiceCopy
--	(PaymentDate, PaymentTotal, InvoiceNumber, VendorID, InvoiceTotal, CreditTotal, TermsID, InvoiceDueDate, InvoiceDate)
--VALUES ('2016-05-21', 19351.18, '97/511', 78, 1962.13, 200.00, 3, '2016-05-21', '2016-02-28')

--update a column base on a calculation
--UPDATE InvoiceCopy
--SET CreditTotal += 100,
--	PaymentTotal = 19351.18
--WHERE InvoiceNumber = '97/511';
--SELECT * FROM InvoiceCopy WHERE InvoiceNumber = '97/511';

--UPDATE InvoiceCopy
--SET TermsID = 1
--WHERE VendorID = 95;

--SELECT * FROM InvoiceCopy WHERE VendorID = 95;

--UPDATE InvoiceCopy
--SET CreditTotal += 100,
--	InvoiceDueDate = (SELECT MAX(InvoiceDueDate) FROM InvoiceCopy)
--WHERE InvoiceNumber = '97/511';

--SELECT * FROM InvoiceCopy WHERE InvoiceNumber = '97/511'


--SELECT * INTO VendorCopy FROM Vendors ;

--update a row using a subquery in our where clause
--UPDATE InvoiceCopy
--SET TermsID = 1
--WHERE VendorID =
--	(SELECT VendorID
--	FROM VendorCopy
--	WHERE VendorName = 'Pacific Bell');

--SELECT * FROM InvoiceCopy WHERE VendorID = 
--	(SELECT VendorID
--	FROM VendorCopy
--	WHERE VendorName = 'Pacific Bell');



--UPDATE InvoiceCopy
--SET TermsID = 2
--WHERE VendorID IN
--	(SELECT VendorID
--	FROM VendorCopy
--	WHERE VendorState IN ('CA', 'AZ', 'NV'));

--SELECT * FROM InvoiceCopy WHERE VendorID IN
--	(SELECT VendorID
--	FROM VendorCopy
--	WHERE VendorState IN ('CA', 'AZ', 'NV'));


--update based on a subquery
--UPDATE InvoiceCopy
--SET CreditTotal += 100
--FROM 
--	(SELECT TOP 10 InvoiceID
--	FROM InvoiceCopy
--	WHERE InvoiceTotal - PaymentTotal - CreditTotal >= 100
--	ORDER BY InvoiceTotal - PaymentTotal - CreditTotal DESC)
--	AS TopInvoices
--WHERE InvoiceCopy.InvoiceID = TopInvoices.InvoiceID;

--SELECT InvoiceID, CreditTotal FROM InvoiceCopy
--	WHERE InvoiceID IN (SELECT TOP 10 InvoiceID
--		FROM InvoiceCopy
--		WHERE InvoiceTotal - PaymentTotal - CreditTotal >= 100
--		ORDER BY InvoiceTotal - PaymentTotal - CreditTotal DESC)

--UPDATE InvoiceCopy
--SET TermsID = 1
--FROM InvoiceCopy JOIN VendorCopy
--	ON InvoiceCopy.VendorID = VendorCopy.VendorID
--WHERE VendorName = 'Pacific Bell';

--SELECT InvoiceCopy.VendorID, TermsID FROM InvoiceCopy JOIN VendorCopy
--		ON InvoiceCopy.VendorID = VendorCopy.VendorID
--	WHERE VendorName = 'Pacific Bell';


--UPDATE VendorCopy
--SET VendorContactLName = LastName,
--	VendorContactFName = FirstName
--FROM VendorCopy JOIN ContactUpdates	
--	ON VendorCopy.VendorID = ContactUpdates.VendorID;

--SELECT VendorContactLName, VendorContactFName FROM VendorCopy
--	JOIN ContactUpdates	
--	ON VendorCopy.VendorID = ContactUpdates.VendorID;

