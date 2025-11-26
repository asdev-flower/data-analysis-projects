
USE Sep2025JunkDB
CREATE TABLE andres_spillari.planned_makes
(project_name VARCHAR (255), summary VARCHAR (255))

USE Sep2025JunkDB
INSERT INTO andres_spillari.planned_makes
VALUES 
('blender homework', 'learning 3D modeling for video games'),
('holiday presents', 'present ideas for different people'),
('coquito recipe', 'our favorite boozy holiday drink!');

UPDATE andres_spillari.planned_makes
SET project_name = 'present ideas'
WHERE project_name = 'holiday presents'

SELECT *
FROM andres_spillari.planned_makes

USE Sep2025JunkDB
DELETE FROM andres_spillari.planned_makes
WHERE project_name = 'coquito recipe'