-- Single line comment
/* Multi-line
comment */

-- Commands start with ‘.’
-- Statements end with ‘;’
Single or double quotes for text types
*/

-- Creating a database or opening an existing one
.open contacts_example.db

-- Create a simple table called ‘contacts’
.headers on -- activates showing the name of the columns (visually useful)

-- *args are the columns (fields), each argument takes 2 parameters: <name> and <type>
create table contacts (name text, phone integer, email text); -- Notice the semi-colon

-- Insert some data into the table, there is no need to input all the field (empty by default)
insert into contacts (name, phone, email) values(‘BLDR’, 666121212, ‘e@bldr.cat’);

-- Querying (viewing) the data, * means all columns, * can be replaced for the specific name/s of the number of column/s desired
SELECT * FROM contacts;  -- typing in upper case is only a convention, used for the keywords

-- Insert more data without specifying the names of the fields, as long as they are in order and ALL
INSERT INTO contacts VALUES(“Brian”, 666001100, “brian@email.com”);
insert into contacts (name, phone) values ('Ojka', 669696969); -- no email, will take the default value specified when creating the column

-- Creating a backup file
.backup testbackup

-- Update the field in the record where condition is met
update contacts set email='ojka@lp.cat' where name='Ojka';

-- Delete all the records where condition is met
delete from contacts where name=’Ojka’;

