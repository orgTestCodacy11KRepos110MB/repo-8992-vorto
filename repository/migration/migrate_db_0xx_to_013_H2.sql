ALTER TABLE USER ADD COLUMN IF NOT EXISTS IS_TECHNICAL_USER BOOLEAN;
ALTER TABLE USER ADD COLUMN IF NOT EXISTS AUTHENTICATION_PROVIDER_ID VARCHAR(255);
ALTER TABLE USER ADD COLUMN IF NOT EXISTS SUBJECT VARCHAR(255);
UPDATE USER SET AUTHENTICATION_PROVIDER_ID = 'BOSCH-ID' WHERE USERNAME LIKE 'S-%-%-%-%-%-%-%';
UPDATE USER SET AUTHENTICATION_PROVIDER_ID = 'GITHUB' WHERE USERNAME NOT LIKE 'S-%-%-%-%-%-%-%';
UPDATE USER SET IS_TECHNICAL_USER=FALSE;