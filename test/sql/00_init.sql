/*
 * Must be executed before all regression test.
 */

-- Create the PostgreSQL extension
CREATE EXTENSION pgtt;

-- Create a regular table with some rows
CREATE TABLE source (id integer PRIMARY KEY, lbl varchar DEFAULT '-');
COMMENT ON TABLE source IS 'Table used to demonstrate GTT create as feature';
COMMENT ON COLUMN source.id IS 'auto generated column';
CREATE INDEX ON source(lbl);
INSERT INTO source VALUES (1,'one'), (2,'two'),(3,'three');

