USE wg0742700;
GO

SELECT COUNT(*) AS NumberOfInvoices, 
		FORMAT(SUM(InvoiceTotal - PaymentTotal - CreditTotal), 'C') AS TotalDue
	FROM Invoices
	WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0;