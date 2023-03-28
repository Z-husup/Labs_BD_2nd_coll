--ÒÐÀÍÇÀÊÖÈÈ


DECLARE @a INT = 10, @b INT = 15, @c INT = 1;
BEGIN TRANSACTION;
IF @c >= 0
BEGIN
    SELECT @a + @b AS 'Sum';
    COMMIT TRANSACTION;
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
END









USE bd_lab;

BEGIN TRANSACTION;
INSERT INTO Customers (Name, Phone, Email)
VALUES ('Zhus', '023542345', 'jsup@mail.com');
IF @@ROWCOUNT > 0 AND NOT EXISTS (SELECT * FROM Customers WHERE Name IS NULL OR LastName = '')
BEGIN
    COMMIT TRANSACTION;
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
END










BEGIN TRANSACTION;

DECLARE @CustomerId INT = 1;
DECLARE @TotalDue MONEY = (SELECT SUM(TotalDue) FROM Orders WHERE CustomerId = @CustomerId);

IF @TotalDue <= 0
BEGIN
    INSERT INTO Orders (CustomerId, OrderDate, TotalDue)
    VALUES (@CustomerId, GETDATE(), 50.00);
    
    IF @@ROWCOUNT > 0
    BEGIN
        COMMIT TRANSACTION;
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
    END
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
END