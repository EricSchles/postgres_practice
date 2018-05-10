CREATE OR REPLACE FUNCTION add_random(val real) RETURNS real AS $$
BEGIN
	RETURN val * random();
END;
$$ LANGUAGE plpgsql;

--main
DO $$
DECLARE
	a real := 10.5;
	b real := 11.2;
	c real := 13.0;
BEGIN
	c := add_random(a);
	RAISE NOTICE 'VALUE of c: %', c;
END $$;
