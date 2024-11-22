WITH TotalDoctors AS (
    SELECT COUNT(DISTINCT d.Doctor_ID) AS Total
    FROM doctors d
    JOIN Hospitals h ON d.Hospital_ID = h.Hospital_ID
    WHERE h.Location IN ('CA', 'CO', 'TX')
),
DoctorsPrescribing AS (
    SELECT COUNT(DISTINCT d.Doctor_ID) AS Prescribing
    FROM doctors d
    JOIN Prescriptions p ON d.Doctor_ID = p.Doctor_ID
    JOIN medicationorders mor ON p.Prescription_ID = mor.Prescription_ID
    JOIN Medications m ON mor.Medication_ID = m.Medication_ID
    JOIN Admissions a ON p.Doctor_ID = a.Doctor_ID
    JOIN Rooms r ON a.Room_ID = r.Room_ID
    JOIN Hospitals h ON r.Hospital_ID = h.Hospital_ID
    WHERE h.Location IN ('CA', 'CO', 'TX')
      AND r.Is_Full = 0
      AND m.Medication_Name IN ('Zolpidem', 'Aspirin')
)

SELECT (dp.Prescribing * 100.0 / td.Total) AS Percentage
FROM TotalDoctors td, DoctorsPrescribing dp;
