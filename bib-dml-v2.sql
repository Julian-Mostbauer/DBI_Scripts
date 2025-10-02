-- ==== SAMPLE DATA ====

-- Shelves
INSERT INTO Shelf (Id, ShelfName, Capacity) VALUES (1, 'Fiction', 100);
INSERT INTO Shelf (Id, ShelfName, Capacity) VALUES (2, 'Science', 50);
INSERT INTO Shelf (Id, ShelfName, Capacity) VALUES (3, 'History', 75);

-- Customers
INSERT INTO Customer (Id, FirstName, LastName, DateOfBirth, libraryNumber)
VALUES (1, 'Alice', 'Smith', TO_DATE('1990-05-15','YYYY-MM-DD'), 1001);
INSERT INTO Customer (Id, FirstName, LastName, DateOfBirth, libraryNumber)
VALUES (2, 'Bob', 'Johnson', TO_DATE('1985-09-22','YYYY-MM-DD'), 1002);
INSERT INTO Customer (Id, FirstName, LastName, DateOfBirth, libraryNumber)
VALUES (3, 'Charlie', 'Brown', TO_DATE('2000-01-12','YYYY-MM-DD'), 1003);
INSERT INTO Customer (Id, FirstName, LastName, DateOfBirth, libraryNumber)
VALUES (4, 'Diana', 'Miller', TO_DATE('1995-11-03','YYYY-MM-DD'), 1004);
INSERT INTO Customer (Id, FirstName, LastName, DateOfBirth, libraryNumber)
VALUES (5, 'Ethan', 'Davis', TO_DATE('1978-04-30','YYYY-MM-DD'), 1005);

-- Books
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (1, '9780000001', 'The Lost World', 'A Dinosaur Tale', 'Crichton', 1);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (2, '9780000002', 'Brave New World', NULL, 'Huxley', 1);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (3, '9780000003', 'Cosmos', NULL, 'Sagan', 2);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (4, '9780000004', 'A Brief History of Time', NULL, 'Hawking', 2);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (5, '9780000005', 'The Selfish Gene', NULL, 'Dawkins', 2);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (6, '9780000006', 'Guns, Germs, and Steel', NULL, 'Diamond', 3);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (7, '9780000007', '1776', NULL, 'McCullough', 3);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (8, '9780000008', 'Team of Rivals', NULL, 'Goodwin', 3);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (9, '9780000009', 'Jurassic Park', NULL, 'Crichton', 1);
INSERT INTO Book (Id, Isbn, Title, Subtitle, AuthorLastName, ShelfId)
VALUES (10, '9780000010', 'The Martian', NULL, 'Weir', 1);

-- Rentals
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (1, 1, TO_DATE('2025-01-05','YYYY-MM-DD'), TO_DATE('2025-01-20','YYYY-MM-DD'));
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (1, 3, TO_DATE('2025-01-10','YYYY-MM-DD'), NULL);
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (2, 2, TO_DATE('2025-01-15','YYYY-MM-DD'), TO_DATE('2025-02-01','YYYY-MM-DD'));
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (2, 4, TO_DATE('2025-02-01','YYYY-MM-DD'), NULL);
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (3, 5, TO_DATE('2025-02-05','YYYY-MM-DD'), TO_DATE('2025-02-25','YYYY-MM-DD'));
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (3, 6, TO_DATE('2025-02-15','YYYY-MM-DD'), NULL);
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (4, 7, TO_DATE('2025-02-20','YYYY-MM-DD'), TO_DATE('2025-03-05','YYYY-MM-DD'));
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (4, 8, TO_DATE('2025-03-01','YYYY-MM-DD'), NULL);
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (5, 9, TO_DATE('2025-03-10','YYYY-MM-DD'), NULL);
INSERT INTO Rental (CustomerId, BookId, RentDate, ReturnDate)
VALUES (5, 10, TO_DATE('2025-03-12','YYYY-MM-DD'), NULL);
