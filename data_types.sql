-- CHAR/VARCHAR:
--
CREATE SCHEMA dogs;
SET search_path TO dogs;
CREATE TABLE dogs (
  name  CHAR(5),
  breed VARCHAR(10)
);

INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');

INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');

-- Error
-- INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever');

SELECT *
FROM dogs;

-- Error
-- INSERT INTO dogs (name, breed) VALUES ('Jane', 'Retrievesadfdsafdasfsafr');

SELECT *
FROM dogs;

DROP TABLE dogs;
DROP SCHEMA dogs;

---

-- NUMERIC:
--
CREATE SCHEMA items;
SET search_path TO items;
CREATE TABLE items (
  price NUMERIC(5, 2)
);

INSERT INTO items (price) VALUES (7);

SELECT *
FROM items;

-- Error
-- INSERT INTO items (price) VALUES (1000);

INSERT INTO items (price) VALUES (34.88);

SELECT *
FROM items;

INSERT INTO items (price) VALUES (34.2989999);

SELECT *
FROM items;

INSERT INTO items (price) VALUES (1.9999);

SELECT *
FROM items;

DROP TABLE items;
DROP SCHEMA items;

---

-- FLOAT:
--
CREATE SCHEMA thingies;
SET search_path TO thingies;
CREATE TABLE thingies (
  price FLOAT(7) -- Contrived Example
);

INSERT INTO thingies (price) VALUES (88.45);

SELECT *
FROM thingies;

INSERT INTO thingies (price) VALUES (8877.45);

SELECT *
FROM thingies;

INSERT INTO thingies (price) VALUES (8877665544.45);

SELECT *
FROM thingies;

DROP TABLE thingies;
DROP SCHEMA thingies;

---

-- DATE/TIME:
--
CREATE SCHEMA people;
SET search_path TO people;
CREATE TABLE people (
  name      TEXT,
  birthdate DATE,
  birthtime TIME
);

INSERT INTO people (name, birthdate, birthtime)
VALUES ('Padma', '1983-11-11', '10:07:35');

INSERT INTO people (name, birthdate, birthtime)
VALUES ('Larry', '1943-12-25', '04:10:42');

SELECT *
FROM people;

DROP TABLE people;
DROP SCHEMA people;

---

-- current_date/current_time/now():
--
SELECT current_date;

SELECT current_time;

SELECT now();

---

-- to_char():
--
CREATE SCHEMA people;
CREATE TABLE people (
  name      TEXT,
  birthdate DATE,
  birthtime TIME
);

INSERT INTO people (name, birthdate, birthtime)
VALUES ('Padma', '1983-11-11', '10:07:35');

INSERT INTO people (name, birthdate, birthtime)
VALUES ('Larry', '1943-12-25', '04:10:42');

SELECT *
FROM people;

SELECT
  name,
  birthdate
FROM people;

SELECT
  name,
  to_char(birthdate, 'Day')
FROM people;

SELECT
  name,
  birthdate,
  to_char(birthdate, 'day')
FROM people;

SELECT
  name,
  birthdate,
  to_char(birthdate, 'Dy')
FROM people;

SELECT
  name,
  birthdate,
  to_char(birthdate, 'D')
FROM people;

SELECT
  name,
  birthdate,
  to_char(birthdate, 'w')
FROM people;

SELECT
  name,
  birthdate,
  to_char(birthdate, 'DDD')
FROM people;

SELECT
  name,
  birthdate,
  to_char(birthdate, 'Month')
FROM people;

SELECT
  name,
  birthtime,
  to_char(birthtime, 'HH24')
FROM people;

SELECT
  name,
  birthtime,
  to_char(birthtime, 'MI')
FROM people;

SELECT concat(to_char(birthdate, 'Month'), ' ', to_char(birthdate, 'Day'), ' ',
              to_char(birthdate, 'YYYY'))
FROM people;

SELECT to_char(birthdate, '"W"as born on a W "w"eek of the "month" Month')
FROM people;

SELECT to_char(birthdate, 'DD/MM/YYYY')
FROM people;

SELECT concat(to_char(birthdate, 'DD/MM/YY'), ' at ', to_char(birthtime, 'HH24:MI'))
FROM people;

DROP TABLE people;
DROP SCHEMA people;

-- Date Math:
--
CREATE SCHEMA people;
CREATE TABLE people (
  name      TEXT,
  birthdate DATE,
  birthtime TIME
);

INSERT INTO people (name, birthdate, birthtime)
VALUES ('Padma', '1983-11-11', '10:07:35');

INSERT INTO people (name, birthdate, birthtime)
VALUES ('Larry', '1943-12-25', '04:10:42');

SELECT *
FROM people;

SELECT extract(DAYS FROM now() - birthdate) AS total_days
FROM people;

SELECT
  name,
  birthdate,
  (now() - birthdate) AS difference
FROM people;

SELECT
  birthdate,
  (birthdate + INTERVAL '1 month') AS plus_one_month
FROM people;

SELECT
  birthdate,
  (birthdate +
   '4 months 1 day' :: INTERVAL) AS plus_one_quarter -- "::" is a cast to type
FROM people;

SELECT
  birthdate,
  (birthdate - INTERVAL '2 years 5 months')
FROM people;

DROP TABLE people;
DROP SCHEMA people;

-- TIMESTAMPS:
--
CREATE SCHEMA comments;
SET search_path TO comments;
CREATE TABLE comments (
  content    TEXT,
  created_at TIMESTAMP DEFAULT now()
);

INSERT INTO comments (content) VALUES ('lol what a funny article');

INSERT INTO comments (content) VALUES ('I found this offensive');

INSERT INTO comments (content) VALUES ('Ifasfsadfsadfsad');

SELECT *
FROM comments
ORDER BY created_at DESC;

-- Using a FUNCTION and a TRIGGER with TIMESTAMP:
--
CREATE TABLE comments2 (
  content    VARCHAR(100),
  changed_at TIMESTAMP DEFAULT now()
);

CREATE OR REPLACE FUNCTION update_timestamp()
  RETURNS TRIGGER AS $$
BEGIN
  IF ROW (NEW.*) IS DISTINCT FROM ROW (OLD.*)
  THEN
    NEW.changed_at = now();
    RETURN NEW;
  ELSE
    RETURN OLD;
  END IF;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER update_created_at
  BEFORE UPDATE
  ON comments2
  FOR EACH ROW EXECUTE PROCEDURE update_timestamp();


INSERT INTO comments2 (content) VALUES ('dasdasdasd');

INSERT INTO comments2 (content) VALUES ('lololololo');

INSERT INTO comments2 (content) VALUES ('I LIKE CATS AND DOGS');

SELECT *
FROM comments2;

UPDATE comments2
SET content = 'THIS IS NOT GIBBERISH'
WHERE content = 'dasdasdasd';

SELECT *
FROM comments2
ORDER BY changed_at;

DROP TRIGGER update_created_at
ON comments2;

DROP FUNCTION update_timestamp();

DROP TABLE comments;
DROP TABLE comments2;

DROP SCHEMA comments;
