WITH b_patients(Patient_ID) AS (
  SELECT patients.Patient_ID
  FROM patients 
  WHERE patients.Blood_Group = "B+"
) 

SELECT sum(medicationorders.Quantity) / (SELECT sum(Quantity) FROM medicationorders)
FROM medicationorders 
JOIN prescriptions USING(Prescription_ID)
WHERE prescriptions.Patient_ID IN (SELECT * from b_patients)