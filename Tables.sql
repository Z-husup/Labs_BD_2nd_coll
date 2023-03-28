--—Œ«ƒ¿ÕÕ€≈ “¿¡À»÷€

create database bd_lab
use bd_lab;
GO
CREATE TABLE Worker 
(
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(200) NOT NULL,
    Points INT NOT NULL,
	Salary INT NOT NULL,
    Premium INT NOT NULL,
);
CREATE TABLE Laptops
(
    Id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(200) NOT NULL,
    Price INT NOT NULL,
    Tax INT NOT NULL,
);




CREATE TABLE Customers (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
	Phone NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) NOT NULL,
    Balance DECIMAL(10, 2) NOT NULL DEFAULT 0
);
CREATE TABLE Orders (
    Id INT IDENTITY PRIMARY KEY,
    CustomerId INT NOT NULL,
    Product NVARCHAR(100) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerId) REFERENCES Customers(Id)
);


