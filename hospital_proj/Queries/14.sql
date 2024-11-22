WITH empty_surgery_rooms(Room_ID, Room_Number) AS (
  SELECT Room_ID, Room_Number
  FROM rooms
  WHERE Is_Full = FALSE AND Room_Type = 'Surgery Room'
) 

SELECT Room_Number, nurses.First_Name, nurses.Last_Name
from admissions JOIN empty_surgery_rooms USING(Room_ID)
  JOIN nurses USING(Nurse_ID)