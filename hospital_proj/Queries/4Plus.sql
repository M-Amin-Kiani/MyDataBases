WITH tx_patients(Patient_ID) AS (
  SELECT Patient_ID
  FROM admissions
  JOIN hospitals USING(Hospital_ID)
  WHERE hospitals.Location = 'TX'
),
tar_doctors(Doctor_ID) AS (
  SELECT Doctor_ID
  FROM doctors
  WHERE doctors.Specialization = 'Orthopedics'
),
tar_patients(Patient_ID) AS (  
  SELECT DISTINCT Patient_ID
  FROM  medications 
  JOIN medicationorders USING(Medication_ID)
  JOIN prescriptions USING(Prescription_ID)
  WHERE Doctor_ID IN (select Doctor_ID from tar_doctors)
  AND Patient_ID IN (SELECT Patient_ID FROM tx_patients)
  AND medications.Dosage < 640
)

SELECT sum(patients.Age)
FROM patients
WHERE patients.Patient_ID IN (SELECT Patient_ID FROM tar_patients)