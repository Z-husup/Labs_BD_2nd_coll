--JOIN
USE bd_lab



SELECT o.Id, o.Date, o.Total, c.FirstName, c.LastName, c.Email
FROM Orders o
INNER JOIN Customers c ON o.CustomerId = c.Id;




SELECT o.Id, o.Date, o.Total, c.FirstName, c.LastName, l.Name, l.Price
FROM Orders o
INNER JOIN Customers c ON o.CustomerId = c.Id
INNER JOIN Laptops l ON o.Id = l.OrderId;