CREATE TABLE [Transaction] (
    TransactionID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Account(AccountID),
    TransactionType VARCHAR2(50),
    Amount DECIMAL(18, 2),
    TransactionDate DATETIME,
    Description VARCHAR2(255)
);