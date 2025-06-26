CREATE TABLE Cardholder (
    CardholderID INT PRIMARY KEY,
    Name VARCHAR(255),
    Contact_Info VARCHAR(255)
);

CREATE TABLE Card (
    CardID INT PRIMARY KEY,
    CardholderID INT,
    Balance DECIMAL(10, 2),
    ExpiryDate DATE,
    FOREIGN KEY (CardholderID) REFERENCES Cardholder(CardholderID)
);

CREATE TABLE ModeOfTransportation (
    ModeID INT PRIMARY KEY,
    ModeName VARCHAR(255),
    DiscountAmount DECIMAL(5, 2)
);

CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,
    CardID INT,
    ModeID INT,
    Fare DECIMAL(8, 2),
    FOREIGN KEY (CardID) REFERENCES Card(CardID),
    FOREIGN KEY (ModeID) REFERENCES ModeOfTransportation(ModeID)
);


CREATE TABLE Kiosk (
    kioskID INT PRIMARY KEY,
    contactinfo VARCHAR(255)
);
