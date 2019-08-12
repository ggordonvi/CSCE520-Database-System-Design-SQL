DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
	maker		CHAR(10),
	model		INT,
	type		CHAR(20),
	PRIMARY KEY	(model)
);

DROP TABLE IF EXISTS PC;
CREATE TABLE PC (
	model		INT,
	speed		FLOAT,
	ram			INT,
	hd			INT,
	price		INT
);

DROP TABLE IF EXISTS Laptop;
CREATE TABLE Laptop (
	model		INT,
	speed		FLOAT,
	ram			INT,
	hd			INT,
	screen		FLOAT,
	price		INT
);

DROP TABLE IF EXISTS Printer;
CREATE TABLE Printer (
	model		INT,
	color		BOOLEAN,
	type		CHAR(20),
	price		INT
);

ALTER TABLE Printer
DROP COLUMN color;

ALTER TABLE Laptop
ADD od char(10) DEFAULT 'none' NOT NULL;