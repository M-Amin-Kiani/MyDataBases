
WITH asprin(Doctor_ID, Patient_ID) AS (
  SELECT Doctor_ID, Patient_ID
  FROM  medications 
  JOIN medicationorders USING(Medication_ID)
  JOIN prescriptions USING(Prescription_ID)
  WHERE Medication_Name = "Aspirin"
)

SELECT patients.First_Name, patients.Address, doctors.Hospital_ID
FROM asprin JOIN doctors USING(Doctor_ID) 
JOIN patients USING(Patient_ID)



