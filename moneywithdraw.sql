CREATE PROCEDURE WithdrawMoney
    @AccountID INT,
    @Amount DECIMAL(18, 2)
AS
BEGIN
    UPDATE Account
    SET Balance = Balance - @Amount
    WHERE AccountID = @AccountID;

    INSERT INTO [Transaction] (AccountID, TransactionType, Amount, TransactionDate, Description)
    VALUES (@AccountID, 'Withdrawal', @Amount, GETDATE(), 'Money withdrawn');
END;