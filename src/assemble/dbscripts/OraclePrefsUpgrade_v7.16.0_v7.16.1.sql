-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog.groovy
-- Ran at: 8/24/15 9:34 AM
-- Against: OWF@jdbc:oracle:thin:@localhost:1521:XE
-- Liquibase version: 2.0.5
-- *********************************************************************

-- Lock Database
-- Changeset changelog_7.16.1.groovy::7.16.1-1::owf::(Checksum: 3:ae067414a3c058b53045e311d46646cc)
INSERT INTO role (authority, description, id, version) VALUES ('ROLE_USER', 'User Role', '26', '2');

INSERT INTO role (authority, description, id, version) VALUES ('ROLE_ADMIN', 'Admin Role', '27', '1');

INSERT INTO DATABASECHANGELOG (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('owf', '', SYSTIMESTAMP, 'Insert Row (x2)', 'EXECUTED', 'changelog_7.16.1.groovy', '7.16.1-1', '2.0.5', '3:ae067414a3c058b53045e311d46646cc', 1);

-- Changeset changelog_7.16.1.groovy::7.16.1-3::owf::(Checksum: 3:8b4c3f03d4786a6263553143cda2bde0)
CREATE TABLE person_role (person_authorities_id NUMBER(38,0), role_id NUMBER(38,0));

INSERT INTO DATABASECHANGELOG (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('owf', '', SYSTIMESTAMP, 'Create Table', 'EXECUTED', 'changelog_7.16.1.groovy', '7.16.1-3', '2.0.5', '3:8b4c3f03d4786a6263553143cda2bde0', 3);

-- Changeset changelog_7.16.1.groovy::7.16.1-4::owf::(Checksum: 3:86e4f665a39e4de4eea6cf49696b7f32)
DROP TABLE role_people;

INSERT INTO DATABASECHANGELOG (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('owf', '', SYSTIMESTAMP, 'Drop Table', 'EXECUTED', 'changelog_7.16.1.groovy', '7.16.1-4', '2.0.5', '3:86e4f665a39e4de4eea6cf49696b7f32', 4);

-- Release Database Lock
