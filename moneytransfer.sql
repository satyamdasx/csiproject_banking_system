CREATE PROCEDURE TransferMoney
    @FromAccountID INT,
    @ToAccountID INT,
    @Amount DECIMAL(18, 2)
AS
BEGIN
    BEGIN TRANSACTION;

    UPDATE Account
    SET Balance = Balance - @Amount
    WHERE AccountID = @FromAccountID;

    UPDATE Account
    SET Balance = Balance + @Amount
    WHERE AccountID = @ToAccountID;

    INSERT INTO [Transaction] (AccountID, TransactionType, Amount, TransactionDate, Description)
    VALUES (@FromAccountID, 'Transfer Out', @Amount, GETDATE(), 'Money transferred out');

    INSERT INTO [Transaction] (AccountID, TransactionType, Amount, TransactionDate, Description)
    VALUES (@ToAccountID, 'Transfer In', @Amount, GETDATE(), 'Money transferred in');

    COMMIT TRANSACTION;
END;