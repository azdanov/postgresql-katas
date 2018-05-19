CREATE SCHEMA cats.cats;

CREATE TABLE cats.cats
(
  cat_id SERIAL NOT NULL PRIMARY KEY,
  name   TEXT,
  breed  TEXT,
  age    INTEGER
);

INSERT INTO cats.cats (name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
  ('Cindy', 'Maine Coon', 10),
  ('Dumbledore', 'Maine Coon', 11),
  ('Egg', 'Persian', 4),
  ('Misty', 'Tabby', 13),
  ('George Michael', 'Ragdoll', 9),
  ('Jackson', 'Sphynx', 7);

-- SELECT:
--
SELECT *
FROM cats.cats;

SELECT name
FROM cats.cats;

SELECT
  cat_id,
  name,
  age
FROM cats.cats;

-- WHERE:
--
SELECT *
FROM cats.cats
WHERE age = 4;


SELECT *
FROM cats.cats
WHERE name = 'Egg';


SELECT *
FROM cats.cats
WHERE name = 'egG';

-- UPDATE:
--
UPDATE cats.cats
SET breed = 'Shorthair'
WHERE breed = 'Tabby';

UPDATE cats.cats
SET age = 14
WHERE name = 'Misty';

-- DELETE:
--
DELETE FROM cats.cats
WHERE name = 'Egg';

DELETE FROM cats.cats
WHERE age = 4;

DELETE FROM cats.cats;

-- Aliases:
--
SELECT
  cat_id AS id,
  name
FROM cats.cats;

SELECT
  name  AS "cat name",
  breed AS "kitty breed"
FROM cats.cats;

---

DROP TABLE cats.cats;
DROP SCHEMA cats;
