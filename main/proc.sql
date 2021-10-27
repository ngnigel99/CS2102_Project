/**
* SQL  or  PL/pgSQL routines of implementation
**/
--basic
/**
* Adding department, remove department
*/
CREATE OR REPLACE PROCEDURE add_department
(
  IN did   INTEGER
, IN dname VARCHAR(50)
)
AS
$$
INSERT INTO departments VALUES
    (did
      , dname
    )
    $$ LANGUAGE sql
;

CREATE OR REPLACE PROCEDURE remove_department
(
IN target_did INTEGER
)
AS
$$
DELETE
FROM
    departments
WHERE
    did = target_did $$ LANGUAGE sql
;

/**
* End
*/
/**
* Routines to add room, change capacity
*/
CREATE OR REPLACE PROCEDURE add_room
(
room_name  VARCHAR(50)
,floor_num INTEGER
, room_num INTEGER
, did      INTEGER
)
AS
$$
INSERT INTO Meeting_Rooms
    (rname
      , room
      , floor
      , did
    )
    values
    (room_name
      , room_num
      , floor_num
      , did
    )
    $$ LANGUAGE sql
;

CREATE OR REPLACE PROCEDURE change_capacity
(
floor      INTEGER
, room_num INTEGER
, capacity INTEGER
,          date DATE
)
AS
$$
insert into Updates values
    (date
      , NULL
      , capacity
      , room_num
      , floor
    )
    $$ LANGUAGE sql
;

/**
* End
*/
/**
* Routines for adding employee
*/
CREATE OR REPLACE PROCEDURE add_employee
(
IN ename     VARCHAR(50)
, hp_contact VARCHAR(50)
, kind       VARCHAR(7)
, did        INTEGER
)
AS
$$
INSERT INTO employees
    ( ename
      , hp_contact
      , kind
      , did
    )
    VALUES
    ( ename
      , hp_contact
      , kind
      , did
    )
    $$ LANGUAGE SQL
;

-- extracting initials for email generation
DROP
FUNCTION
IF EXISTS get_name_initials( VARCHAR(50));
CREATE OR REPLACE FUNCTION get_name_initials
(
VARCHAR(50)
) RETURNS VARCHAR(10)
AS
$$
DECLARE
initials VARCHAR(50) := '';
letter   VARCHAR     := '';
BEGIN
FOREACH letter IN ARRAY string_to_array($1, ' ')
LOOP
initials := initials
|| SUBSTR(letter, 1, 1);
END LOOP;
RETURN initials;
END;
$$ LANGUAGE plpgsql;
-- create email and assign for employee
CREATE OR REPLACE FUNCTION assign_email()
RETURNS TRIGGER
AS
$$
DECLARE
Eabbrv   VARCHAR(10) := '';
EmailEnd VARCHAR(11) := '@gsnail.com';
BEGIN
Eabbrv    := get_name_initials(NEW.ename);
NEW.email := CONCAT(Eabbrv, NEW.eid, EmailEnd);
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER assign_email_add BEFORE
INSERT
ON
    employees FOR EACH ROW EXECUTE FUNCTION assign_email()
;

CREATE OR REPLACE PROCEDURE remove_employee
(
IN eid          INTEGER
, resigned_date DATE
)
AS
$$
UPDATE
    employees
SET resigned_date = $2
WHERE
    eid = $1
;

$$ Language SQL;
/**
* End
*/
/**
* Routines for declaring health
*/
CREATE OR REPLACE PROCEDURE declare_health
(
IN eid_input        INTEGER
,  date_input DATE
, temperature_input DECIMAL
)
AS
$$
BEGIN
INSERT INTO Health_Declaration
    ( eid
      , DATE
      , temp
    )
    VALUES
    ( eid
      , DATE
      , temperature
    )
	ON CONFLICT(eid)
		DO UPDATE SET temp = $3 
			WHERE eid = $1 AND date = $2
;

END IF;
END
$$ Language plpgsql;

--trigger to assign fever
CREATE OR REPLACE FUNCTION assign_fever()
RETURNS TRIGGER AS $$
BEGIN
IF (NEW.temp >= 37.5) THEN
NEW.fever := TRUE;
ELSE
NEW.fever := FALSE;
END IF; 
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER assign_fever_trig BEFORE
INSERT
    OR
UPDATE
ON
    Health_Declaration FOR EACH ROW EXECUTE PROCEDURE assign_fever()
;

/**
* END
*/
	