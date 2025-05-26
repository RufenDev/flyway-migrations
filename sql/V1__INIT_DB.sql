
-- Create table table
DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM pg_catalog.pg_tables
        WHERE schemaname = 'public' AND tablename = 'person'
    ) THEN
        RAISE NOTICE 'Person table - Table already exists';
        RETURN;
    END IF;

    CREATE TABLE public.person (
        person_id SERIAL PRIMARY KEY,
        first_name VARCHAR(100) NOT NULL,
        last_name VARCHAR(100) NOT NULL,
        middle_name VARCHAR(100) DEFAULT NULL
    );

    RAISE NOTICE 'Person table - Table created';
END$$;
