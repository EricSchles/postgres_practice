DROP TABLE IF EXISTS hi;
DROP TABLE IF EXISTS hello;
DROP TABLE IF EXISTS books;

CREATE TABLE books
(
       id		serial primary key,
       title		varchar(100) not null,
       primary_author 	varchar(100)
);

--- insert val

INSERT INTO books
       (id, title, primary_author)
VALUES
	(1, 'The Hobbit', 'Tolkien'); 

DROP TABLE IF EXISTS dataframe;
---
CREATE TABLE dataframe
(
       id		serial primary key,
       first_val	decimal not null,
       second_val 	decimal not null
);

DO $$
BEGIN
	FOR val IN 1..1000 LOOP
	    INSERT INTO dataframe
	    	   (id, first_val, second_val)
	    VALUES
		   (val, random(), random());
	END LOOP;
END; $$
