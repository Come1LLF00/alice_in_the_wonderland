CREATE OR REPLACE FUNCTION crowns_check() RETURNS trigger AS $crows_check$
    DECLARE

    BEGIN
        IF ( 'головной убор' <> ( SELECT fk_type_id FROM clothes WHERE id=NEW.fk_clothes_id ) ) THEN
            RAISE EXCEPTION 'clothes ( % ) is not a hat', NEW.fk_clothes_id;
        END IF;
        RETURN NEW;
    END;
$crowns_check$ LANGUAGE plpgsql;

CREATE TRIGGER crowns_check BEFORE INSERT OR UPDATE ON crowns
    FOR EACH ROW EXECUTE PROCEDURE crowns_check();
