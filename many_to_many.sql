CREATE SCHEMA many;
SET SEARCH_PATH TO many;

-- CREATING THE REVIEWERS TABLE
--
CREATE TABLE reviewers (
  id         SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name  TEXT
);

-- CREATING THE SERIES TABLE
--
CREATE TABLE series (
  id            SERIAL PRIMARY KEY,
  title         TEXT,
  released_year INTEGER,
  genre         TEXT
);

-- CREATING THE REVIEWS TABLE
--
CREATE TABLE reviews (
  id          SERIAL PRIMARY KEY,
  rating      NUMERIC(2, 1),
  series_id   INTEGER REFERENCES series (id),
  reviewer_id INTEGER REFERENCES reviewers (id)
);

-- INSERTING A BUNCH OF DATA
--
INSERT INTO series (title, released_year, genre) VALUES
  ('Archer', 2009, 'Animation'),
  ('Arrested Development', 2003, 'Comedy'),
  ('Bob''s Burgers', 2011, 'Animation'),
  ('Bojack Horseman', 2014, 'Animation'),
  ('Breaking Bad', 2008, 'Drama'),
  ('Curb Your Enthusiasm', 2000, 'Comedy'),
  ('Fargo', 2014, 'Drama'),
  ('Freaks and Geeks', 1999, 'Comedy'),
  ('General Hospital', 1963, 'Drama'),
  ('Halt and Catch Fire', 2014, 'Drama'),
  ('Malcolm In The Middle', 2000, 'Comedy'),
  ('Pushing Daisies', 2007, 'Comedy'),
  ('Seinfeld', 1989, 'Comedy'),
  ('Stranger Things', 2016, 'Drama');

INSERT INTO reviewers (first_name, last_name) VALUES
  ('Thomas', 'Stoneman'),
  ('Wyatt', 'Skaggs'),
  ('Kimbra', 'Masters'),
  ('Domingo', 'Cortes'),
  ('Colt', 'Steele'),
  ('Pinkie', 'Petit'),
  ('Marlon', 'Crafford');

INSERT INTO reviews (series_id, reviewer_id, rating) VALUES
  (1, 1, 8.0), (1, 2, 7.5), (1, 3, 8.5), (1, 4, 7.7), (1, 5, 8.9), (2, 1, 8.1),
  (2, 4, 6.0), (2, 3, 8.0), (2, 6, 8.4), (2, 5, 9.9), (3, 1, 7.0), (3, 6, 7.5),
  (3, 4, 8.0), (3, 3, 7.1), (3, 5, 8.0), (4, 1, 7.5), (4, 3, 7.8), (4, 4, 8.3),
  (4, 2, 7.6), (4, 5, 8.5), (5, 1, 9.5), (5, 3, 9.0), (5, 4, 9.1), (5, 2, 9.3),
  (5, 5, 9.9), (6, 2, 6.5), (6, 3, 7.8), (6, 4, 8.8), (6, 2, 8.4), (6, 5, 9.1),
  (7, 2, 9.1), (7, 5, 9.7), (8, 4, 8.5), (8, 2, 7.8), (8, 6, 8.8), (8, 5, 9.3),
  (9, 2, 5.5), (9, 3, 6.8), (9, 4, 5.8), (9, 6, 4.3), (9, 5, 4.5), (10, 5, 9.9),
  (13, 3, 8.0), (13, 4, 7.2), (14, 2, 8.5), (14, 3, 8.9), (14, 4, 8.9);

---

-- Simple JOIN:
--
SELECT
  title,
  rating
FROM series
  JOIN reviews ON series.id = reviews.series_id;

---

-- Simple JOIN + aggregation:
--
SELECT
  title,
  round(avg(rating), 2) AS average_rating
FROM series
  JOIN reviews r ON series.id = r.series_id
GROUP BY series.id
ORDER BY average_rating;

---

-- Simple JOIN:
--
SELECT
  first_name,
  last_name,
  rating
FROM reviewers
  JOIN reviews r ON reviewers.id = r.reviewer_id
ORDER BY last_name, first_name;

---

-- LEFT JOIN:
--
SELECT title AS unreviewed_series
FROM series
  LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;

---

-- Simple JOIN + aggregation:
--
SELECT
  genre,
  round(avg(rating), 2) AS average_rating
FROM series
  JOIN reviews r ON series.id = r.series_id
GROUP BY genre;

---

-- LEFT JOIN + aggregate functions:
--
SELECT
  first_name,
  last_name,
  count(rating)                      AS total,
  coalesce(min(rating), 0)           AS min,
  coalesce(max(rating), 0)           AS max,
  coalesce(round(avg(rating), 2), 0) AS avg,
  CASE
  WHEN count(rating) >= 10
    THEN 'POWER USER'
  WHEN count(rating) > 0
    THEN 'ACTIVE'
  ELSE 'INACTIVE'
  END                                AS status
FROM reviewers r
  LEFT JOIN reviews r2 ON r.id = r2.reviewer_id
GROUP BY first_name, last_name;

---

-- Double JOIN:
--
SELECT
  title,
  rating,
  concat(first_name, ' ', last_name)
FROM series s
  JOIN reviews r ON s.id = r.series_id
  JOIN reviewers r2 ON r.reviewer_id = r2.id;

---

DROP TABLE series;
DROP TABLE reviewers;
DROP TABLE reviews;
DROP SCHEMA many;
