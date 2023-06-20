-- Transform “date” columns to be readable since SQLite don’t have a DATE datatype
UPDATE crime_scene_report
SET date = 
    (SELECT year || '-' || month || '-' || day
    FROM 
        (
          SELECT substr(date, 1, 4) AS year,
                substr(date, 5, 2) AS month, 
                substr(date, 7, 2) AS day
        FROM crime_scene_report));

UPDATE facebook_event_checkin
SET date = 
    (SELECT year || '-' || month || '-' || day
    FROM 
        (
          SELECT substr(date, 1, 4) AS year,
                substr(date, 5, 2) AS month, 
                substr(date, 7, 2) AS day
        FROM facebook_event_checkin));

UPDATE get_fit_now_check_in
SET check_in_date = 
    (SELECT year || '-' || month || '-' || day
    FROM 
        (
          SELECT substr(check_in_date, 1, 4) AS year,
                substr(check_in_date, 5, 2) AS month, 
                substr(check_in_date, 7, 2) AS day
        FROM get_fit_now_check_in));

UPDATE get_fit_now_member
SET membership_start_date = 
    (SELECT year || '-' || month || '-' || day
    FROM 
        (
          SELECT substr(membership_start_date, 1, 4) AS year,
                substr(membership_start_date, 5, 2) AS month, 
                substr(membership_start_date, 7, 2) AS day
        FROM get_fit_now_member));

-- Extract crime description
SELECT * FROM crime_scene_report
WHERE date = '2018-01-15' AND type = 'murder' AND city = 'SQL City';

-- Find Annabel (one of the witnesses)
SELECT * FROM person
WHERE name LIKE 'Annabel%';

-- Find Annabel’s Testimony at the police station
SELECT * FROM person AS per
JOIN interview AS int 
ON per.id = int.person_id
where per.name LIKE 'Annabel%';

-- Find the other witness who lives at Northwestern Dr. and look through the testimony regarding a murder
SELECT * FROM person AS per
JOIN interview AS int 
ON per.id = int.person_id
where per.address_street_name = 'Northwestern Dr';

-- Find the murderer with the descriptions from both testimonies
SELECT get.id, get.person_id, get.name, get.membership_status, dr.gender, dr.plate_number
FROM get_fit_now_member AS get
JOIN person AS per
ON get.person_id = per.id
JOIN drivers_license AS dr
ON per.license_id = dr.id
WHERE get.id LIKE '48Z%';

-- Confirm if Jeremy Bower is the murderer in the solution table
INSERT INTO solution
VALUES(1, 'Jeremy Bowers');
SELECT * FROM solution;

-- Get the testimony of the murderer
SELECT * FROM interview
WHERE person_id = 67318;

-- Find the brains behind the murder through the murderer's description
SELECT dr.id, per.name, dr.height, dr.hair_color, dr.car_model, dr.car_make, dr.gender, per.id
FROM (
   SELECT person_id,
          COUNT(person_id) as event_number, 
          date,
          event_name
  FROM facebook_event_checkin
  WHERE event_name = 'SQL Symphony Concert' AND date LIKE '2017%'
  GROUP BY person_id, event_name 
  HAVING event_number = 3) AS T1
JOIN person per
ON T1.person_id = per.id
JOIN drivers_license dr
ON per.license_id = dr.id
WHERE dr.hair_color = 'red'AND dr.gender = 'female' AND dr.car_make LIKE 'Tesla%';
-- Conclusion: Miranda Priestyly hired the murderer, Jeremy Bower

