WITH high_dosage_med_order(Prescription_ID) AS (
  SELECT DISTINCT Prescription_ID
  FROM medicationorders NATURAL JOIN medications
) 

SELECT (SELECT count(DISTINCT Doctor_ID) FROM high_dosage_med_order NATURAL JOIN prescriptions)  / count(Doctor_ID)
FROM doctors









