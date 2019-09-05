USE wg0742700
GO
SELECT VendorName AS Name, VendorAddress1 AS Address, VendorState FROM Vendors WHERE VendorState = 'CA' ORDER BY VendorName