SELECT p.First_Name AS PatientName, p.Last_Name AS PatientlastName, h.Hospital_Name AS HospitalName
FROM Patients p
JOIN Admissions a ON p.Patient_ID = a.Patient_ID
JOIN Hospitals h ON a.Hospital_ID = h.Hospital_ID
JOIN rooms r ON a.Room_ID = r.Room_ID
WHERE r.Room_Type = 'ICU' AND r.Is_Full = 1;
