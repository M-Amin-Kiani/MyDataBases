WITH target_nurses(Nurse_ID) AS (
  SELECT distinct Nurse_ID
  FROM nurses JOIN admissions USING(Nurse_ID)
  WHERE admissions.Admission_Date = "2024-01-12"
)

SELECT DISTINCT departments.Department_Name, departments.Create_Year, departments.Budget 
FROM departments JOIN nurses USING(Department_ID)
WHERE nurses.Nurse_ID in (SELECT Nurse_ID FROM target_nurses);