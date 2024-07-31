CREATE PROCEDURE CreateCustomer
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @DateOfBirth DATE,
    @Address NVARCHAR(255),
    @PhoneNumber NVARCHAR(15),
    @Email NVARCHAR(100)
AS
BEGIN
    INSERT INTO Customer (FirstName, LastName, DateOfBirth, Address, PhoneNumber, Email)
    VALUES (@FirstName, @LastName, @DateOfBirth, @Address, @PhoneNumber, @Email);
END;