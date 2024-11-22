WITH empty_room_patients(Patient_ID) AS (
  SELECT Patient_ID
  FROM admissions
  JOIN rooms USING(Room_ID)
  WHERE Is_Full = FALSE
),
tar_doctors(Doctor_ID) AS (
  SELECT Doctor_ID
  FROM doctors
  JOIN hospitals USING(Hospital_ID)
  JOIN departments USING(Department_ID)
  WHERE departments.Department_Name = 'Dermatology'
  AND hospitals.Location = 'CA'
)

SELECT medications.Medication_Name, medications.Dosage
FROM  medications 
JOIN medicationorders USING(Medication_ID)
JOIN prescriptions USING(Prescription_ID)
WHERE Doctor_ID IN (select Doctor_ID from tar_doctors)
AND Patient_ID IN (SELECT Patient_ID FROM empty_room_patients);
