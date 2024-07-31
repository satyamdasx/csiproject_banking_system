CREATE TABLE Account (
    AccountID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    AccountType VARCHAR2(50),
    Balance DECIMAL(18, 2),
    DateOpened DATE
);
