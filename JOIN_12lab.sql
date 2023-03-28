--JOIN
USE bd_lab


SELECT *
FROM Customers
INNER JOIN Orders ON Customers.Id = Orders.CustomerId;
