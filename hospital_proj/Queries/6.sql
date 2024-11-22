SELECT Patients.First_Name AS PatientName, Patients.Last_Name AS PatientlastName, doctors.First_Name AS DoctorName, Prescriptions.Description AS PrescriptionDetails
FROM Patients
JOIN Prescriptions ON Patients.Patient_ID = Prescriptions.Patient_ID
JOIN doctors ON Prescriptions.Doctor_ID = doctors.Doctor_ID;
