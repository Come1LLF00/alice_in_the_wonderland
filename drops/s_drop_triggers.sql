-- drop triggers
DROP TRIGGER IF EXISTS leader_suit_check on leaders CASCADE;

DROP TRIGGER IF EXISTS resident_registration_check on residences CASCADE;

--DROP TRIGGER IF EXISTS tools_check CASCADE;

--DROP TRIGGER IF EXISTS weapons_check CASCADE;

DROP TRIGGER IF EXISTS worships_check on worships CASCADE;


--\i drop_functions_triggers.sql