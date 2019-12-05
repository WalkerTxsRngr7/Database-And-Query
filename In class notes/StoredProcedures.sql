USE wg0742700;
GO
--GO ends a batch

--CREATE PROC spInvoiceReport
--AS

--SELECT VendorName, InvoiceNumber,
--	InvoiceDate, InvoiceTotal
--FROM Invoices JOIN Vendors
--	ON Invoices.VendorID = Vendors.VendorID
--WHERE InvoiceTotal - CreditTotal -PaymentTotal > 0
--ORDER BY VendorName;


--EXEC spInvoiceReport;


--drop the stored procedure if it exists
--not recommended, because security access
--is also dropped
--IF OBJECT_ID('spCopyInvoices') IS NOT NULL
--	DROP PROC spCopyInvoices;
--GO

--CREATE PROC spCopyInvoices
--AS
--	--drop our table copy if it exists
--	--create a copy of the invoices table
--	IF OBJECT_ID('InvoiceCopy') IS NOT NULL
--		DROP TABLE InvoiceCopy;
--	SELECT *
--	INTO InvoiceCopy
--	FROM Invoices;



--This store procedure(sp) accepts parameter date time
--and returns a money value
--param declared within create proc statement
--CREATE PROC spInvTotal1
--	@DateVar	smalldatetime,
--	@InvTotal money OUTPUT
--AS
--SELECT @InvTotal = SUM(InvoiceTotal)
--FROM Invoices
--WHERE InvoiceDate >= @DateVar;
--GO

----This sp will initialize our date param
----if the user did not supply
--CREATE PROC spInvTotal2
--	@DateVar smalldatetime = NULL
--AS 
--	IF @DateVar IS NULL
--	SELECT @DateVar = MIN(InvoiceDate)
--	FROM Invoices
--	WHERE InvoiceDate >= @DateVar;
--GO

--CREATE PROC spInvTotal3
--	@InvTotal money OUTPUT,
--	@DateVar smalldatetime = NULL,
--	@VendorVar varchar(40) = '%'
--AS
--	IF @DateVar IS NULL
--		SELECT @DateVar = MIN(InvoiceDate)
--		FROM Invoices;
--	SELECT @InvTotal = SUM(InvoiceTotal)
--	FROM Invoices JOIN Vendors	ON Invoices.VendorID = Vendors.VendorID
--	WHERE (InvoiceDate >= @DateVar) AND
--		(VendorName LIKE @VendorVar);


--pass param by position
--DECLARE @MyInvTotal money;
--EXEC spInvTotal3 @MyInvTotal OUTPUT,
--	'2016-02-01', 'P%';
--PRINT @MyInvTotal;
--go

----pass param by name
--DECLARE @MyInvTotal money;
--EXEC spInvTotal3 @DateVar = '2016-02-01',
--	@VendorVar = 'P%', @InvTotal = @MyInvTotal OUTPUT;
--PRINT @MyInvTotal;
--go

----omit optional para
--DECLARE @MyInvTotal money;
--EXEC spInvTotal3
--	@VendorVar = 'M%', @InvTotal = @MyInvTotal OUTPUT;
--PRINT @MyInvTotal;
--go

--DECLARE @MyInvTotal money;
--EXEC spInvTotal3 @MyInvTotal OUTPUT;
--PRINT @MyInvTotal;


--This stored procedure will return the count
--of selected invoices using a RETURN statement
--CREATE PROC spInvCount
--	@DateVar smalldatetime = NULL,
--	@VendorVar varchar(40) = '%'
--AS
--IF @DateVar IS NULL
--	SELECT @DateVar = MIN(InvoiceDate) FROM Invoices;

--DECLARE @InvCount int;
--SELECT @InvCount = COUNT(InvoiceID)
--FROM Invoices JOIN Vendors
--	ON Invoices.VendorID = Vendors.VendorID
--	WHERE (InvoiceDate >= @DateVar) AND
--		(VendorName LIKE @VendorVar);
--RETURN @InvCount;
--GO
----Execute the stored procedure
--DECLARE @InvCount int;
--EXEC @InvCount = spInvCount '2016-02-01', 'P%';
--PRINT 'Invoice Count: ' + CONVERT(varchar, @InvCount);



--Validate data and insert an Invoice
--CREATE PROC spInsertInvoice--		@VendorID		int = NULL,--		@InvoiceNumber	varchar(50) = NULL,--		@InvoiceDate	smalldatetime = NULL,--		@InvoiceTotal	money = NULL,--		--@PaymentTotal	money = NULL,--		--@CreditTotal	money = NULL,--		@TermsID		int = NULL,--		@InvoiceDueDate	smalldatetime = NULL--,--		--@PaymentDate	smalldatetime = NULL
--AS

--IF EXISTS(SELECT *  FROM Vendors WHERE VendorID = @VendorID)
--	INSERT Invoices
--	VALUES(@VendorID, @InvoiceNumber,
--		@InvoiceDate, @InvoiceTotal, 0, 0,
--		@TermsID, @InvoiceDueDate, NULL);

--ELSE
--	THROW 50001, 'Not a valid VendorID!', 1;

--GO

--BEGIN TRY
--	EXEC spInsertInvoice
--		799, 'ZXK-799', '2016-05-01', 299.95, 1, '2016-06-01';
--END TRY
--BEGIN CATCH
--	PRINT 'An error occured.';
--	PRINT 'Message: ' + CONVERT(varchar, ERROR_MESSAGE());
--	IF ERROR_NUMBER() >= 50000
--		PRINT 'This is a custom error message.';
--END CATCH;



--sp_Help [TopVendors]
--sp_Who



CREATE TRIGGER Vendors_INSERT_UPDATE
	ON Vendors
	AFTER INSERT, UPDATE
AS
	UPDATE Vendors
		SET VendorState = UPPER(VendorState)
		WHERE VendorID IN (SELECT VendorID FROM Inserted);
GO

INSERT Vendors
VALUES ('Peerless Uniforms, Inc.', '785 S Pixley Rd',
NULL, 'Piqua', 'Oh', '45356', '(937) 555-8845',
NULL, NULL, 4, 550);
SELECT * FROM Vendors WHERE VendorName = 'Peerless Uniforms, Inc.'