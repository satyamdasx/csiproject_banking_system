CREATE PROCEDURE DepositMoney
    @AccountID INT,
    @Amount DECIMAL(18, 2)
AS
BEGIN
    UPDATE Account
    SET Balance = Balance + @Amount
    WHERE AccountID = @AccountID;

    INSERT INTO [Transaction] (AccountID, TransactionType, Amount, TransactionDate, Description)
    VALUES (@AccountID, 'Deposit', @Amount, GETDATE(), 'Money deposited');
END;