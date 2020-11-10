CREATE USER vmarchuk WITH PASSWORD 'vmarchuk' CREATEDB;
CREATE DATABASE chatdb
    WITH
    OWNER = vmarchuk
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
