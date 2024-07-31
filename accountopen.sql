CREATE PROCEDURE OpenAccount
    @CustomerID INT,
    @AccountType NVARCHAR(50),
    @InitialDeposit DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO Account (CustomerID, AccountType, Balance, DateOpened)
    VALUES (@CustomerID, @AccountType, @InitialDeposit, GETDATE());
END;