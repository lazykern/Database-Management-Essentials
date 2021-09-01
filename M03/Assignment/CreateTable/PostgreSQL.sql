DROP TABLE IF EXISTS Employee CASCADE;
DROP TABLE IF EXISTS Customer CASCADE;
DROP TABLE IF EXISTS ResourceTbl CASCADE;
DROP TABLE IF EXISTS Facility CASCADE;
DROP TABLE IF EXISTS Location CASCADE;
DROP TABLE IF EXISTS EventRequest CASCADE;
DROP TABLE IF EXISTS EventPlan CASCADE;
DROP TABLE IF EXISTS EventPlanLine CASCADE;

CREATE TABLE Employee (
    EmpNo VARCHAR(8) NOT NULL,
    EmpName VARCHAR(30) NOT NULL,
    Department VARCHAR(20) NOT NULL,
    Email VARCHAR(70) NOT NULL,
    Phone VARCHAR(8) NOT NULL,
    CONSTRAINT PK_employee PRIMARY KEY (EmpNo)
);

CREATE TABLE Customer (
    CustNo VARCHAR(8) NOT NULL,
    CustName VARCHAR(30) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    Internal CHAR(1) NOT NULL,
    Contact VARCHAR(20) NOT NULL,
    Phone VARCHAR(8) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(2) NOT NULL,
    Zip VARCHAR(5) NOT NULL,
    CONSTRAINT PK_customer PRIMARY KEY (CustNo)
);

CREATE TABLE ResourceTbl (
    ResNo  VARCHAR(8) NOT NULL,
    ResName VARCHAR(20) NOT NULL,
    Rate SMALLINT NOT NULL CHECK (Rate > 0),
    CONSTRAINT PK_ResourceTbl PRIMARY KEY (ResNo)
);

CREATE TABLE Facility (
    FacNo VARCHAR(8) NOT NULL,
    FacName VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Facility PRIMARY KEY (FacNo)
);

CREATE TABLE Location (
    LocNo VARCHAR(8) NOT NULL,
    FacNo VARCHAR(8) NOT NULL,
    LocName VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Location PRIMARY KEY (LocNo),
    CONSTRAINT FK_Location_Facility FOREIGN KEY (FacNo) REFERENCES Facility (FacNo)
);

CREATE TABLE EventRequest (
    EventNo VARCHAR(8) NOT NULL,
    DateHeld DATE NOT NULL,
    DateReq DATE NOT NULL,
    CustNo VARCHAR(8) NOT NULL,
    FacNo VARCHAR(8) NOT NULL,
    DateAuth DATE,
    Status VARCHAR(10) NOT NULL CHECK (Status IN ('Pending', 'Denied', 'Approved')),
    EstCost INTEGER NOT NULL,
    EstAudience INTEGER NOT NULL CHECK (EstAudience > 0),
    BudNo VARCHAR(8),
    CONSTRAINT PK_EventRequest PRIMARY KEY (EventNo),
    CONSTRAINT FK_EventRequest_Customer FOREIGN KEY (CustNo) REFERENCES Customer (CustNo),
    CONSTRAINT FK_EventRequest_Facility FOREIGN KEY (FacNo) REFERENCES Facility (FacNo)
);

CREATE TABLE EventPlan (
    PlanNo VARCHAR(8) NOT NULL,
    EventNo VARCHAR(8) NOT NULL,
    WorkDate DATE NOT NULL,
    Notes VARCHAR(255),
    Activity VARCHAR(20) NOT NULL,
    EmpNo VARCHAR(8),
    CONSTRAINT PK_EventPlan PRIMARY KEY (PlanNo),
    CONSTRAINT FK_EventPlan_EventRequest FOREIGN KEY (EventNo) REFERENCES EventRequest (EventNo)
);

CREATE TABLE EventPlanLine (
    PlanNo VARCHAR(8) NOT NULL,
    LineNo SMALLINT NOT NULL,
    TimeStart TIMESTAMP NOT NULL,
    TimeEnd TIMESTAMP NOT NULL,
    NumberFld SMALLINT NOT NULL,
    LocNo VARCHAR(8) NOT NULL,
    ResNo VARCHAR(8) NOT NULL,
    CONSTRAINT PK_EventPlanLine PRIMARY KEY (PlanNo, LineNo),
    CONSTRAINT FK_PlanNo_EventPlan FOREIGN KEY (PlanNo) REFERENCES EventPlan (PlanNo),
    CONSTRAINT FK_PlanNo_Location FOREIGN KEY (LocNo) REFERENCES Location (LocNo),
    CONSTRAINT FK_PlanNo_ResourceTbl FOREIGN KEY (ResNo) REFERENCES ResourceTbl (ResNo),
    CONSTRAINT CHECK_TimeStart_LessThan_TimeEnd CHECK (TimeStart < TimeEnd)
);