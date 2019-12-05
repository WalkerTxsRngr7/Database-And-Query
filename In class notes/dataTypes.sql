USE wg0742700;
GO

--SELECT InvoiceDate,InvoiceTotal,--	CAST(InvoiceDate AS varchar) AS varchardate,--	CAST(InvoiceTotal AS int) AS integerTotal,--	CAST(InvoiceTotal AS varchar) AS varcharTotal--	FROM Invoices;


--SELECT 50/100 AS IntegerMath,
--	50/CAST(100 AS decimal(3)) AS CastMath,
--	CAST(50 AS decimal(3))/100 AS CastMath2;


--SELECT CONVERT(varchar, InvoiceDate) AS varcharDate,
--	CONVERT(varchar, InvoiceDate, 1) AS varcharDate_1,
--	CONVERT(varchar, InvoiceDate, 107) AS varcharDate_107,
--	CONVERT(varchar, InvoiceTotal, 1) AS varcharTotal_1
--FROM Invoices;


--SELECT TRY_CONVERT(varchar, InvoiceDate) AS varcharDate,
--	TRY_CONVERT(varchar, InvoiceDate, 1) AS varcharDate_1,
--	TRY_CONVERT(varchar, InvoiceDate, 107) AS varcharDate_107,
--	TRY_CONVERT(varchar, InvoiceTotal) AS varcharTotal,
--	TRY_CONVERT(varchar, InvoiceTotal, 1) AS varcharTotal_1,
--	TRY_CONVERT(date, 'Feb 29 2015') AS invalidDate
--FROM Invoices;

--SELECT STR(1234.5678, 7, 1) AS numToString,
--	CHAR(79) AS toChar,
--	ASCII('Orange') AS orangeASCII,
--	NCHAR(332) AS nchar,
--	UNICODE(N'Or') AS unicode;

