---baby's first aggregation!!
CREATE OR REPLACE FUNCTION get_sum(a real, b real) RETURNS real as $$
BEGIN
	RETURN a + b;
END;
$$ LANGUAGE plpgsql;

---MAIN
DO $$
DECLARE
	summation real := 0.0;
	tmp_val real := random();
BEGIN
	FOR counter IN 1..100000 LOOP
	    summation := get_sum(tmp_val, summation);
	    tmp_val := random();
	END LOOP;
	RAISE NOTICE 'Summation: %', summation;
END; $$
