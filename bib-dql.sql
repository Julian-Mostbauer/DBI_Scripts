-- Wie viele Kunden gibt es
SELECT count(*) FROM Customer;

-- Wie viele Bücher gibt es
SELECT * FROM Book;

-- Welche Titel haben die Bücher
SELECT TITLE FROM Book;

-- Gib TItel, Author und SHelfId aus
SELECT TITLE, AUTHORLASTNAME, SHELFID AS RegalNummer FROM Book;

-- Gibt Titel und AUthor wie folgt aus: Orwell - 1984
SELECT AUTHORLASTNAME || ' - ' || TITLE AS "Author - Title" FROM BOOK;

-- Summiere alle ISBN-Werte
SELECT SUM(ISBN) FROM BOOK; 

-- Berrechne das Alter der Kunden in Jahren, mit Nachname und Alter
SELECT LASTNAME ,ROUND((SYSDATE - DATEOFBIRTH)/365.25, 0) AS CUSTOMERAGE FROM CUSTOMER;

-- Zerlege das Geburtsdatum des Kunden in Jahr, Monat, Tag
SELECT EXTRACT(YEAR FROM DATEOFBIRTH) AS YR, 
EXTRACT(MONTH FROM DATEOFBIRTH) AS MN ,
EXTRACT(DAY FROM DATEOFBIRTH) AS D FROM CUSTOMER;

-- Berechne das Durchschnittsalter der Kunden.
SELECT ROUND(AVG((SYSDATE - DATEOFBIRTH)/365.25), 1) AS AVGCUSTOMERAGE FROM CUSTOMER;
SELECT ROUND(AVG(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM DATEOFBIRTH)), 1) AS AVGCUSTOMERAGE  FROM CUSTOMER;
