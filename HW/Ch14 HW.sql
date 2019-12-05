USE wg0742700

--DECLARE @ProductsCount INT;
--SET @ProductsCount = (SELECT COUNT(ProductID) FROM Products);
--IF @ProductsCount >= 7
--	PRINT 'The number of products is greater than or equal to 7.';
--ELSE
--	PRINT 'The number of products is less than 7.';


--DECLARE @ProductsCount INT;
--SET @ProductsCount = (SELECT COUNT(ProductID) FROM Products);

--DECLARE @AvgPrice MONEY;
--SET @AvgPrice = (SELECT AVG(ListPrice) FROM Products);
--IF @ProductsCount >= 7
--	PRINT 'Count:' + CONVERT(varchar, @ProductsCount) + ' Avg Price: $' + CONVERT(varchar, @AvgPrice);
--ELSE
--	PRINT 'The number of products is less than 7.';


--DECLARE @factors INT = 1;
--WHILE @factors < 10
--	BEGIN
--		IF 10 % @factors = 0m AND 20 % @factors = 0
--			PRINT CONVERT(varchar, @factors);
--	SET @factors += 1;
--	END;


BEGIN TRY 
INSERT INTO Categories(CategoryName) VALUES('Guitar')
PRINT 'Record Was INSERTED';
END TRY
BEGIN CATCH
PRINT 'FAILURE: Record was not inserted.'
PRINT 'ERROR '+CONVERT(varchar,ERROR_NUMBER())+': '+CONVERT(varchar,ERROR_MESSAGE())+'.'; 

END CATCH