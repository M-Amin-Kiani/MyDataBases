SELECT Hospitals.Hospital_Name AS HospitalName, Patients.First_Name AS PatientName, Patients.Last_Name AS PatientlastName
FROM hospitals
JOIN Patients ON Hospitals.Hospital_ID = Patients.Hospital_ID
WHERE Patients.Gender = 'Male'
AND Patients.Blood_Group = 'A+'
AND Patients.Age < 40;
