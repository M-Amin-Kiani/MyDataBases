SELECT m.Medication_Name, mo.Quantity
FROM doctors d
JOIN Prescriptions p ON d.Doctor_ID = p.Doctor_ID
JOIN patients pt ON p.Patient_ID = pt.Patient_ID
JOIN medicationorders mo ON p.Prescription_ID = mo.Prescription_ID
JOIN Medications m ON mo.Medication_ID = m.Medication_ID
WHERE d.Specialization = 'Radiology';
