with target_patients(Patient_ID) AS (
SELECT Patient_ID
FROM patients
WHERE patients.Birth_Date > 22 AND patients.Blood_Group = "AB+"
)

SELECT nurses.First_Name as nurse_name, doctors.First_Name as doctor_name
FROM admissions
JOIN hospitals USING(Hospital_ID)
JOIN nurses USING(Nurse_ID)
JOIN doctors USING(Doctor_ID)
WHERE hospitals.Location = "CA" AND Patient_ID IN (SELECT * FROM target_patients)