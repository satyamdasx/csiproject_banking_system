CREATE PROCEDURE ViewTransactionHistory
    @AccountID INT
AS
BEGIN
    SELECT TransactionID, TransactionType, Amount, TransactionDate, Description
    FROM [Transaction]
    WHERE AccountID = @AccountID
    ORDER BY TransactionDate DESC;
END;