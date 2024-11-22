SELECT h.Hospital_Name
FROM Hospitals h
JOIN Admissions a ON h.Hospital_ID = a.Hospital_ID
WHERE a.Admission_Date = '2024-02-25';
