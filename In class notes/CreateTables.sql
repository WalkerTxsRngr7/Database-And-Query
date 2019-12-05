USE wg0742700;
GO

----Create a table
----have a composite primary key by using a table level constraint
--CREATE TABLE InvoiceLineItems1
--(
--    InvoiceID				INT			NOT NULL,
--	InvoiceSequence			SMALLINT	NOT NULL,
--	InvoiceLineItemAmount	MONEY		NOT NULL,
--	PRIMARY KEY (InvoiceID, InvoiceSequence)
--);

---- Create our invoices1 table
----use column constraints to set primary key
--CREATE TABLE Invoices1
--(
--	InvoiceID			INT		NOT NULL IDENTITY PRIMARY KEY,
--	InvoiceTotal		MONEY	NOT NULL
--						CHECK (InvoiceTotal >= 0),
--	PaymentTotal		MONEY	NOT NULL,
--						CHECK (PaymentTotal >= 0)
--);

----Add the check constraint at the table level
--CREATE TABLE Invoices2
--(
--	InvoiceID			INT		NOT NULL IDENTITY PRIMARY KEY,
--	InvoiceTotal		MONEY	NOT NULL,
--	PaymentTotal		MONEY	NOT NULL,
--	CHECK ((InvoiceTotal >= 0) AND (PaymentTotal >= 0))
--);


--CREATE TABLE Invoices3
--(
--	InvoiceID		INT		NOT NULL IDENTITY PRIMARY KEY,
--	InvoiceTotal	MONEY	NOT NULL CHECK (InvoiceTotal > 0)
--);


--CREATE TABLE Vendors1
--(
--	VendorCode			CHAR(6)		NOT NULL PRIMARY KEY,
--	VendorName			VARCHAR(50)	NOT NULL,
--	CHECK((VendorCode LIKE '[A-Z][A-Z][0-9][0-9][0-9][0-9]')
--		AND (LEFT(VendorCode, 2) = LEFT(VendorName, 2)))
--);


--CREATE TABLE Vendors9
--(
--	VendorID			INT		NOT NULL PRIMARY KEY,
--	VendorName			VARCHAR(50)	NOT NULL
--);

--CREATE TABLE Invoices9
--(
--	InvoiceID			INT		NOT NULL PRIMARY KEY,
--	VendorID			INT		NOT NULL REFERENCES Vendors9 (VendorID),
--	InvoiceTotal		MONEY	NULL
--);