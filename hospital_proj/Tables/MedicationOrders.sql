CREATE TABLE MedicationOrders (
    Order_ID INT PRIMARY KEY,
    Prescription_ID INT,
    Medication_ID INT,
    Quantity INT,
    Order_Date DATE,
    FOREIGN KEY (Prescription_ID) REFERENCES Prescriptions(Prescription_ID),
    FOREIGN KEY (Medication_ID) REFERENCES Medications(Medication_ID)
);