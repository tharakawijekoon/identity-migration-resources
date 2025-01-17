DO $$
    BEGIN
        BEGIN
            ALTER TABLE IDN_OAUTH2_DEVICE_FLOW ADD COLUMN QUANTIFIER INTEGER DEFAULT 0, DROP CONSTRAINT USER_CODE, ADD CONSTRAINT USRCDE_QNTFR_CONSTRAINT UNIQUE (USER_CODE, QUANTIFIER);
        EXCEPTION
            WHEN duplicate_column THEN RAISE NOTICE 'column QUANTIFIER already exists in IDN_OAUTH2_DEVICE_FLOW table.';
        END;
    END;
$$
