
with zol_users(Patient_ID) as (
  SELECT DISTINCT prescriptions.Patient_ID
  FROM medicationorders
  JOIN medications USING(Medication_ID)
  JOIN prescriptions USING(Prescription_ID)
  WHERE medications.Medication_Name = "Zolpidem"
)

SELECT DISTINCT Department_Name
FROM admissions 
JOIN nurses USING(Nurse_ID)
JOIN departments USING(Department_ID)
WHERE Patient_ID IN (SELECT * FROM zol_users)
