WITH tx_doctors(Doctor_ID) as (
  SELECT Doctor_ID
  FROM doctors
  JOIN hospitals USING(Hospital_ID)
  WHERE hospitals.Location = "TX"
)


SELECT medications.Medication_Name, medications.Dosage
FROM  medications 
JOIN medicationorders USING(Medication_ID)
JOIN prescriptions USING(Prescription_ID)
WHERE prescriptions.Doctor_ID IN (SELECT * FROM tx_doctors)
ORDER BY medications.Dosage DESC
LIMIT 3;
-- 