CREATE TABLE Hospitals (
    Hospital_ID INT PRIMARY KEY,
    Hospital_Name VARCHAR(255),
    Location VARCHAR(255),
    Manager VARCHAR(100)
);

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Department_Name VARCHAR(255),
    Create_Year DATE,
    Budget INT,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID)
);

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


CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Department_ID INT,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Specialization VARCHAR(50),
    Age INT,
    Phone_Number VARCHAR(15),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

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

CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Room_Number INT,
    Room_Type VARCHAR(100),
    Is_Full BOOLEAN,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID)
);

CREATE TABLE Admissions (
    Admission_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Doctor_ID INT,
    Patient_ID INT,
    Nurse_ID INT,
    Room_ID INT,
    Admission_Date DATE,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitals(Hospital_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Nurse_ID) REFERENCES Nurses(Nurse_ID),
    FOREIGN KEY (Room_ID) REFERENCES Rooms(Room_ID)
);

CREATE TABLE Prescriptions (
    Prescription_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Description TEXT,
    Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
);

CREATE TABLE Medications (
    Medication_ID INT PRIMARY KEY,
    Medication_Name VARCHAR(100),
    Description TEXT,
    Dosage INT
);

CREATE TABLE MedicationOrders (
    Order_ID INT PRIMARY KEY,
    Prescription_ID INT,
    Medication_ID INT,
    Quantity INT,
    Order_Date DATE,
    FOREIGN KEY (Prescription_ID) REFERENCES Prescriptions(Prescription_ID),
    FOREIGN KEY (Medication_ID) REFERENCES Medications(Medication_ID)
);