-- Creating Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    DateOfBirth DATE,
    Address VARCHAR2(255),
    PhoneNumber VARCHAR2(15),
    Email VARCHAR2(100)
);

