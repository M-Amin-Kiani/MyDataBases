SELECT p1.Patient_ID AS Patient1_ID, p1.First_Name AS Patient1_Name, p1.Last_Name AS Patient1_lastName,
       p2.Patient_ID AS Patient2_ID, p2.First_Name AS Patient2_Name, p2.Last_Name AS Patient2_lastName, 
       d.First_Name AS Doctor_Name, d.Last_Name AS Doctor_lastName, m.Medication_Name AS Medication_Name
       
FROM Patients p1
JOIN Prescriptions pr1 ON p1.Patient_ID = pr1.Patient_ID
JOIN doctors d ON pr1.Doctor_ID = d.Doctor_ID
JOIN medicationorders mor ON pr1.Prescription_ID = mor.Prescription_ID
JOIN medications m ON m.Medication_ID = mor.Medication_ID

JOIN Prescriptions pr2 ON d.Doctor_ID = pr2.Doctor_ID  
JOIN medicationorders mor2 ON pr2.Prescription_ID = mor2.Prescription_ID
JOIN medications m2 ON m2.Medication_ID = mor2.Medication_ID
JOIN Patients p2 ON pr2.Patient_ID = p2.Patient_ID
WHERE p1.Patient_ID <> p2.Patient_ID AND m.Medication_Name = m2.Medication_Name;
