CREATE SCHEMA books;
SET search_path TO books;
CREATE TABLE books
(
  book_id        SERIAL NOT NULL PRIMARY KEY,
  title          TEXT,
  author_fname   TEXT,
  author_lname   TEXT,
  released_year  INTEGER,
  stock_quantity INTEGER,
  pages          INTEGER
);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
  ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
  ('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
  ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
  ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
  ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
  ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
  ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
  ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
  ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
  ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
  ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
  ('Where I''m Calling From: Selected Stories', 'Raymond', 'Carver', 1989, 12, 526),
  ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
  ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
  ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
  ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343),
  ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
  ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
  ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

SELECT *
FROM books;

-- COUNT:
--
SELECT count(*)
FROM books;

SELECT count(DISTINCT (author_lname, author_fname))
FROM books;

SELECT count(*)
FROM books
WHERE title ILIKE '%the%';

-- GROUP BY:
--
SELECT
  author_lname,
  author_fname,
  count(*) AS total_books
FROM books
GROUP BY author_lname, author_fname
ORDER BY total_books DESC;

SELECT
  released_year,
  count(*) AS total_released_books
FROM books
GROUP BY released_year
ORDER BY released_year DESC;

-- MIN/MAX:
--
SELECT min(released_year)
FROM books;

SELECT max(pages)
FROM books;

SELECT
  title,
  pages
FROM books
WHERE pages = (SELECT max(pages)
               FROM books);

SELECT
  title,
  pages
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT
  author_fname,
  author_lname,
  min(released_year) AS debut_year
FROM books
GROUP BY 1, 2;

SELECT
  concat(author_fname, ' ', author_lname) AS author,
  max(pages)                              AS maximum_pages
FROM books
GROUP BY author_lname, author_fname;

-- SUM:
--
SELECT sum(pages) AS total_pages
FROM books;

SELECT
  author_fname,
  author_lname,
  sum(pages) AS total_pages
FROM books
GROUP BY author_lname, author_fname;

-- AVG:
--
SELECT
  released_year,
  avg(stock_quantity) AS average_of_books
FROM books
GROUP BY released_year;

SELECT
  author_fname,
  author_lname,
  avg(pages) AS average_of_pages
FROM books
GROUP BY author_lname, author_fname;

---

SELECT sum(stock_quantity) AS total_stock
FROM books;

SELECT
  author_fname,
  author_lname,
  avg(released_year) AS average_release_year
FROM books
GROUP BY author_lname, author_fname;

SELECT concat(author_fname, ' ', author_lname) AS longest_book_author
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT
  released_year AS year,
  count(*)      AS "# books",
  avg(pages)    AS "avg pages"
FROM books
GROUP BY released_year
ORDER BY released_year;

---

DROP TABLE books;
DROP SCHEMA books;