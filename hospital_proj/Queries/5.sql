SELECT Patients.First_Name AS PatientName, Patients.Last_Name AS PatientlastName
FROM Patients
JOIN admissions ON patients.Patient_ID = admissions.Patient_ID 
JOIN doctors ON admissions.Doctor_ID = doctors.Doctor_ID
JOIN Rooms ON admissions.Room_ID = Rooms.Room_ID
WHERE Patients.Blood_Group = 'O-'
AND doctors.Specialization = 'Endocrinology'
AND Rooms.Room_Type = 'General Ward';
