-- EX. 4 --

CREATE TABLE Customers (
    CustomerId int PRIMARY KEY,
    Name text,
    Email text);
    
CREATE TABLE Orders(
    OrderId int PRIMARY KEY,
    Quantity int,
    CustomerId INT,
    BookId INT,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (BookId) REFERENCES Books(BookId)
);

CREATE TABLE Books(
    BookId int PRIMARY KEY,
    Title text
);
    
INSERT INTO Customers (CustomerId, Name, Email) 
    VALUES 
        (1, 'Alice Johnson', 'alice.johnson@email.com'),
        (2, 'Bob Smith', 'bob.smith@email.com'),
        (3, 'Charlie Brown', 'charlie.brown@email.com');
        
Insert INTO Books(BookId, Title)
    VALUES
        (1, 'Dune'),
        (2, 'SQL for Dummies'),
        (3, 'Foundation');

INSERT INTO Orders(OrderId, Quantity, CustomerId, BookId)
    VALUES
    (1, 5, 1, 2),
    (2, 1, 2, 3),
    (3, 1, 3, 1);
    
SELECT Name, Title, Quantity FROM Orders INNER JOIN Books ON Orders.BookId = Books.BookId, Customers ON Orders.CustomerId = Customers.CustomerId