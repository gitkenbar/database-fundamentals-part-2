-- EX. 1 --

CREATE TABLE Customers (
    CustomerId int,
    Name text,
    Email text);
    
INSERT INTO Customers (CustomerId, Name, Email) 
    VALUES 
        (1, 'Alice Johnson', 'alice.johnson@email.com'),
        (2, 'Bob Smith', 'bob.smith@email.com'),
        (3, 'Charlie Brown', 'charlie.brown@email.com');
        
SELECT * FROM Customers
    
-- EX. 2 --

UPDATE Customers
SET Email = 'bob.smith@newdomain.com'
WHERE CustomerId = 2;

SELECT * FROM Customers

-- EX. 3 --

DELETE FROM Customers
WHERE CustomerId = 3;
SELECT * FROM Customers;
