CREATE TABLE Customer (
	custno CHAR(4) UNIQUE NOT NULL,
	custname TEXT NOT NULL,
	address TEXT NOT NULL,
	internal CHAR(1) NOT NULL,
	contact VARCHAR(60) NOT NULL,
	phone CHAR(7) NOT NULL,
	city TEXT NOT NULL,
	state CHAR(2) NOT NULL,
	zip CHAR(5),
	CONSTRAINT CustomerPK PRIMARY KEY (custno) 
);

CREATE TABLE Facility (
	facno CHAR(4) UNIQUE NOT NULL,
	facname TEXT UNIQUE NOT NULL,
	CONSTRAINT FacilityPK PRIMARY KEY (facno) 
);

CREATE TABLE Location (
	locno CHAR(4) UNIQUE NOT NULL,
	facno CHAR(4) NOT NULL,
	locname TEXT NOT NULL,
	CONSTRAINT LocationPK PRIMARY KEY (locno),
	CONSTRAINT FacilityFK FOREIGN KEY (facno) REFERENCES Facility
);