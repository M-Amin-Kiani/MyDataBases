SELECT Doctors.First_Name AS DoctorName, Doctors.Last_Name AS DoctorlastName, Nurses.First_Name AS NurseName, Nurses.Last_Name AS NurselastName, Departments.Department_Name AS DepartmentName
FROM Doctors
JOIN Nurses ON Doctors.Department_ID = Nurses.Department_ID
JOIN departments ON Doctors.Department_ID = Departments.Department_ID;
