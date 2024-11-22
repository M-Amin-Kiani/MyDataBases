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