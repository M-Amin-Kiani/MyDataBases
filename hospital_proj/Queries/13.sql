SELECT DISTINCT m.Medication_Name, m.Dosage
FROM medications m
JOIN medicationorders mor ON m.Medication_ID = mor.Medication_ID
JOIN prescriptions p ON mor.Prescription_ID = mor.Prescription_ID
JOIN patients pt ON pt.Patient_ID = p.Patient_ID
JOIN admissions a ON pt.Patient_ID = a.Patient_ID
JOIN Hospitals h ON a.Hospital_ID = h.Hospital_ID
WHERE h.Location = 'TX'
ORDER BY m.Dosage DESC
LIMIT 3;
