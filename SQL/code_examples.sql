-- Statements end with ‘;’

-- Single line comment
/* Multi-line
comment */

/* Single or double quotes for text types

-- Creating a database schema
CREATE SCHEMA `my_db` DEFAULT CHARACTER SET utf8;  -- Notice the semi-colon

-- Using certain schema
USE `my_db`;


-- Create a simple table called ‘contacts’
-- *args are the columns (fields), each argument takes 2 parameters: <name> and <type>
-- IF NOT EXISTS could be added for safety, it will create table only if not present yet
CREATE TABLE contacts (
  `id` INT AUTO_INCREMENT,  -- AUTO_INCREMENT makes the field to increment by 1 (default) on each record
  name VARCHAR(255) NOT NULL,  -- (@arg) is size
                                -- NOT NULL makes the field not nullable
  phone INT, -- size is optional for INT types
  email VARCHAR(255),
  created TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- TIMESTAMP type represents a timestamp
                                                -- CURRENT_TIMESTAMP is the current time
  deleted TINYINT DEFAULT 0,  -- TINYINT represents boolean type
                              -- DEFAULT specified default value

  PRIMARY KEY (`id`),  -- specify table's primary key
);

CREATE UNIQUE INDEX `id_UNIQUE` (`id` ASC);  -- indexation for faster query
                                              -- UNIQUE makes the column to have unique value for its records

-- Foreign key definition, REFERENCES to another table's column
CONSTRAIN `fk_contact_city`
  FOREIGN KEY (`id`)
  REFERENCES `db`.`city` (`id`);

-- Drop a table
-- IF EXISTS does the drop only if the table exists, no error otherwise
DROP TABLE IF EXISTS contacts;

-- Insert some data into the table, there is no need to input all the field (empty by default)
INSERT INTO contacts (name, phone, email) VALUES (‘BLDR’, 666121212, ‘e@bldr.cat’);

-- Querying (viewing) the data, * means all columns, * can be replaced for the specific name/s of the number of column/s desired
SELECT * FROM contacts;  -- typing in upper case is only a convention, used for the keywords

-- Insert more data without specifying the names of the fields, as long as they are in order and ALL
INSERT INTO contacts VALUES(“Brian”, 666001100, “brian@email.com”);
insert into contacts (name, phone) values ('Ojka', 669696969); -- no email, will take the default value specified when creating the column


-- Update the field in the record where condition is met
update contacts set email='ojka@lp.cat' where name='Ojka';

-- Delete all the records where condition is met
delete from contacts where name=’Ojka’;

