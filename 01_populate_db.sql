-- DROP DATABASE IF EXISTS demo_db_pg_slice;
-- CREATE DATABASE demo_db_pg_slice;
\c demo_db_pg_slice;
CREATE TABLE IF NOT EXISTS parti_pg_slice(c1 timestamp without time zone, c2 text);
INSERT INTO parti_pg_slice (c1)
SELECT date_trunc('minute', dd)::timestamp
FROM generate_series
        ( NOW()::timestamp  - INTERVAL '3 DAY'
        , NOW()::timestamp  + INTERVAL '3 DAY'
        , '1 hour'::interval) dd
        ;
