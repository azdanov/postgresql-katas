CREATE TABLE cats
(
  cat_id SERIAL NOT NULL PRIMARY KEY,
  name   TEXT,
  breed  TEXT,
  age    INTEGER
);

INSERT INTO cats (name, breed, age)
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
FROM cats;

SELECT name
FROM cats;

SELECT
  cat_id,
  name,
  age
FROM cats;

-- WHERE:
--
SELECT *
FROM cats
WHERE age = 4;


SELECT *
FROM cats
WHERE name = 'Egg';


SELECT *
FROM cats
WHERE name = 'egG';

-- UPDATE:
--
UPDATE cats
SET breed = 'Shorthair'
WHERE breed = 'Tabby';

UPDATE cats
SET age = 14
WHERE name = 'Misty';

-- DELETE:
--
DELETE FROM cats
WHERE name = 'Egg';

DELETE FROM cats
WHERE age = 4;

DELETE FROM cats;

-- Aliases:
--
SELECT
  cat_id AS id,
  name
FROM cats;

SELECT
  name  AS "cat name",
  breed AS "kitty breed"
FROM cats;

---

DROP TABLE cats;
