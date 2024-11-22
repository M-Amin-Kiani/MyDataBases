SELECT Departments.Department_Name AS DepartmentName, doctors.First_Name AS DoctorName, doctors.Last_Name AS DoctorlastName, doctors.Specialization
FROM departments
JOIN doctors ON Departments.Department_ID = doctors.Department_ID
WHERE Departments.Budget > 290000
AND doctors.Specialization = 'Neurology';
