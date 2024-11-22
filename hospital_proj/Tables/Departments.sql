CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Department_Name VARCHAR(255),
    Create_Year DATE,
    Budget INT,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID)
);