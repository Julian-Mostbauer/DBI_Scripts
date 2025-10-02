-- Insert Shelves
INSERT INTO Shelf (ShelfName, Capacity) VALUES ('Fiction', 50);
INSERT INTO Shelf (ShelfName, Capacity) VALUES ('Science', 40);
INSERT INTO Shelf (ShelfName, Capacity) VALUES ('History', 30);

-- Insert Customers
INSERT INTO Customer (FirstName, LastName, DateOfBirth, libraryNumber) 
VALUES ('Alice', 'Smith', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 1001);
INSERT INTO Customer (FirstName, LastName, DateOfBirth, libraryNumber) 
VALUES ('Bob', 'Johnson', TO_DATE('1985-07-22', 'YYYY-MM-DD'), 1002);
INSERT INTO Customer (FirstName, LastName, DateOfBirth, libraryNumber) 
VALUES ('Carol', 'Williams', TO_DATE('1992-11-03', 'YYYY-MM-DD'), 1003);
INSERT INTO Customer (FirstName, LastName, DateOfBirth, libraryNumber) 
VALUES ('David', 'Brown', TO_DATE('1978-03-09', 'YYYY-MM-DD'), 1004);
INSERT INTO Customer (FirstName, LastName, DateOfBirth, libraryNumber) 
VALUES ('Eve', 'Davis', TO_DATE('2000-01-28', 'YYYY-MM-DD'), 1005);

-- Insert Books (10 total)
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0001', 'The Great Escape', NULL, 'Miller', 'Fiction');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0002', 'Quantum Physics', 'An Introduction', 'Einstein', 'Science');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0003', 'World History', 'From Ancient to Modern', 'Thompson', 'History');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0004', 'Mystery Manor', NULL, 'Clark', 'Fiction');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0005', 'Genetics Explained', NULL, 'Watson', 'Science');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0006', 'The Roman Empire', NULL, 'Taylor', 'History');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0007', 'Adventures in Space', NULL, 'Hawkins', 'Fiction');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0008', 'Chemistry Basics', NULL, 'Curie', 'Science');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0009', 'Medieval Europe', NULL, 'Johnson', 'History');
INSERT INTO Book (Isbn, Title, Subtitle, AuthorLastName, ShelfName) VALUES ('ISBN0010', 'Fantasy Tales', NULL, 'Anderson', 'Fiction');

-- Insert Rentals
-- Finished = ReturnDate NOT NULL
-- Pending = ReturnDate NULL

-- Customer 1 (Alice)
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Smith', 'ISBN0001', TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-10', 'YYYY-MM-DD'));
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Smith', 'ISBN0002', TO_DATE('2025-09-15', 'YYYY-MM-DD'), NULL);

-- Customer 2 (Bob)
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Johnson', 'ISBN0003', TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-30', 'YYYY-MM-DD'));
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Johnson', 'ISBN0004', TO_DATE('2025-09-12', 'YYYY-MM-DD'), NULL);

-- Customer 3 (Carol)
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Williams', 'ISBN0005', TO_DATE('2025-09-05', 'YYYY-MM-DD'), TO_DATE('2025-09-14', 'YYYY-MM-DD'));
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Williams', 'ISBN0006', TO_DATE('2025-09-18', 'YYYY-MM-DD'), NULL);

-- Customer 4 (David)
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Brown', 'ISBN0007', TO_DATE('2025-09-02', 'YYYY-MM-DD'), TO_DATE('2025-09-09', 'YYYY-MM-DD'));
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Brown', 'ISBN0008', TO_DATE('2025-09-16', 'YYYY-MM-DD'), NULL);

-- Customer 5 (Eve)
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Davis', 'ISBN0009', TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-08', 'YYYY-MM-DD'));
INSERT INTO Rental (CustomerLastName, BookIsbn, RentDate, ReturnDate) 
VALUES ('Davis', 'ISBN0010', TO_DATE('2025-09-17', 'YYYY-MM-DD'), NULL);

COMMIT;
