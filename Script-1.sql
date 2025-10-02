CREATE TABLE Shelf (
ShelfName VARCHAR2(100),
Description VARCHAR2(100)
);


CREATE TABLE Customer (
LastName VARCHAR2(100),
DateOfBirth DATE,
libraryNumber NUMBER
);



CREATE TABLE Book (
Isbn VARCHAR2(20),
Title VARCHAR2(100),
AuthorLastName VARCHAR(100),
ShelfName VARCHAR(100)
);

CREATE TABLE Rental (
CustomerLastName VARCHAR2(100);

);