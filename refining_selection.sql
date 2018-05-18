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

-- DISTINCT:
--
SELECT DISTINCT author_lname
FROM books;

SELECT DISTINCT
  author_fname,
  author_lname
FROM books;

-- ORDER BY:
--

SELECT released_year
FROM books
ORDER BY released_year;

SELECT released_year
FROM books
ORDER BY released_year ASC;

SELECT released_year
FROM books
ORDER BY released_year DESC;

SELECT
  title,
  author_fname,
  author_lname
FROM books
ORDER BY author_fname;

SELECT
  title,
  author_fname,
  author_lname
FROM books
ORDER BY 2;

SELECT
  author_fname,
  author_lname
FROM books
ORDER BY author_lname, author_fname;

SELECT
  author_fname,
  author_lname
FROM books
ORDER BY 2, 1;

-- LIMIT:
--
SELECT title
FROM books
LIMIT 3;

SELECT
  title,
  released_year
FROM books
ORDER BY released_year DESC
LIMIT 5;

SELECT
  title,
  released_year
FROM books
ORDER BY released_year DESC
OFFSET 4
LIMIT 5;

SELECT *
FROM books
OFFSET 5
LIMIT ALL;

-- LIKE/ILIKE:

SELECT
  title,
  author_fname
FROM books
WHERE author_fname LIKE '%da%';

SELECT
  title,
  author_fname
FROM books
WHERE author_fname ILIKE '%da%';

SELECT title
FROM books
WHERE title LIKE '%the%';

SELECT title
FROM books
WHERE title ILIKE 'the%';

SELECT
  title,
  stock_quantity
FROM books
WHERE cast(stock_quantity AS TEXT) LIKE '____';

SELECT title
FROM books
WHERE title LIKE '%\%%';

SELECT title
FROM books
WHERE title LIKE '%\_%';

---

SELECT title
FROM books
WHERE title ILIKE '%stories%';

SELECT
  title,
  pages
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT concat(title, ' - ', released_year) AS summary
FROM books
ORDER BY released_year DESC
LIMIT 3;

SELECT
  title,
  released_year,
  stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;

SELECT
  title,
  author_lname
FROM books
ORDER BY 2, 1;

---

DROP TABLE books;
