CREATE OR REPLACE FUNCTION leader_suit_check(
) RETURNS trigger AS
$leader_suit_check$
    DECLARE
        leader_suit text := ( SELECT fk_suit_name FROM residents WHERE id=NEW.fk_resident_id );
        kingdom_suit text := ( SELECT fk_suit_name FROM kingdoms WHERE id=NEW.fk_kingdom_id );
    BEGIN
        IF ( leader_suit != kingdom_suit ) THEN
            RAISE EXCEPTION 'leaders suit must equal to kingdoms suit ( expected: %; actual: % )', leader_suit, kingdom_suit;
        END IF;

        RETURN NEW;
    END;
$leader_suit_check$
LANGUAGE plpgsql;

CREATE TRIGGER leader_suit_check BEFORE INSERT OR UPDATE ON leaders
    FOR EACH ROW EXECUTE PROCEDURE leader_suit_check();
