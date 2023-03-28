--“–»√√≈–€

USE bd_lab;

GO
CREATE TRIGGER Laptop_After
ON Laptops
AFTER INSERT
AS
BEGIN
    UPDATE Laptops
    SET Tax = Price * 0.10
    FROM Laptops
    INNER JOIN INSERTED ON Laptops.Id = INSERTED.Id;
END;






GO
CREATE TRIGGER UnchangedWorker
ON Worker
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    SELECT *
    FROM INSERTED;
END;






GO
CREATE VIEW WorkerView
AS
SELECT Id, Name, Points, Premium, Salary, (Points * Premium) AS TotalPay
FROM Worker;

GO
CREATE TRIGGER WorkerViewInsteadOfTrigger
ON WorkerView
INSTEAD OF UPDATE
AS
BEGIN
    UPDATE w
    SET w.Salary = i.TotalPay
    FROM Worker w
    INNER JOIN INSERTED i ON w.Id = i.Id;
END;