CREATE TABLE Nurses (
    Nurse_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Department_ID INT,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Phone_Number VARCHAR(15),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);