CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Hospital_ID INT,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Gender VARCHAR(10),
    Birth_Date DATE,
    Address VARCHAR(255),
    Age INT,
    Phone_Number VARCHAR(15),
    Blood_Group VARCHAR(5),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID)
);