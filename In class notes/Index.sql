USE wg0742700;
GO

--CREATE INDEX IX_VendorID
--	ON Invoices (VendorID);

--CREATE INDEX IX_Invoices
--	ON Invoices (InvoiceDate DESC, InvoiceTotal);

--DROP TABLE Vendors9;
--GO

--CREATE TABLE Vendors9
--(
--	VendorID		INT NOT NULL PRIMARY KEY,
--	VendorName		VARCHAR(50) NOT NULL
--);

--DROP TABLE Invoices9;
--GO

--CREATE TABLE Invoices9
--(
--	InvoiceID		INT NOT NULL PRIMARY KEY,
--	VendorID		INT NOT NULL REFERENCES Vendors9(VendorID),
--	InvoiceTotal	MONEY NULL
--);

SELECT current_value FROM sys.sequences WHERE name = 'TestSequence1';

--CREATE TABLE SequenceTable(
--	SequenceNo	INT,
--	Description	VARCHAR(50));

INSERT INTO SequenceTable VALUES
(NEXT VALUE FOR Master.dbo.TestSequence1, 'First Inserted Row');
INSERT INTO SequenceTable VALUES
(NEXT VALUE FOR Master.dbo.TestSequence1, 'Second Inserted Row');

SELECT * FROM SequenceTable;