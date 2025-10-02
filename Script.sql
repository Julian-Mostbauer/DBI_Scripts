-- A rough data model of a library

-- Sort tables  such that those not needing any others come first

-- Shelf, Customer, Book, Rental
-- DROP TABLE Shelf;

CREATE TABLE Shelf (
ShelfName VARCHAR2(100),
Description VARCHAR2(100)
)

-- Customer(lastName, dateOfBirth libraryNumber)
