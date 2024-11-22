CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Room_Number INT,
    Room_Type VARCHAR(100),
    Is_Full BOOLEAN,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID)
);