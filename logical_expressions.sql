CREATE SCHEMA books;
CREATE TABLE books.books
(
  book_id        SERIAL NOT NULL PRIMARY KEY,
  title          TEXT,
  author_fname   TEXT,
  author_lname   TEXT,
  released_year  INTEGER,
  stock_quantity INTEGER,
  pages          INTEGER
);

INSERT INTO books.books (title, author_fname, author_lname, released_year, stock_quantity, pages)
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
FROM books.books;

---

-- Not Equal:
--

SELECT
  title,
  released_year
FROM books.books
WHERE released_year <> 2017;

SELECT
  title,
  released_year
FROM books.books
WHERE released_year != 2017;

-- Not LIKE:
--

SELECT title
FROM books.books
WHERE title NOT LIKE 'The%';

-- Greater Than:
--

SELECT
  title,
  released_year
FROM books.books
WHERE released_year > 2010;

-- Less Than:
--

SELECT
  title,
  released_year
FROM books.books
WHERE released_year < 2000;

-- Greater / Less Than Or Equal:
--

SELECT
  title,
  released_year
FROM books.books
WHERE released_year <= 2000;

SELECT
  title,
  released_year
FROM books.books
WHERE released_year >= 2010;

-- Logical AND:
--

SELECT
  title,
  released_year
FROM books.books
WHERE author_lname = 'Eggers' AND released_year > 2010;

-- Logical OR:
--

SELECT
  title,
  released_year
FROM books.books
WHERE author_lname = 'Eggers' OR author_lname = 'Gaiman';

-- BETWEEN:
--

SELECT
  title,
  released_year
FROM books.books
WHERE released_year BETWEEN 1990 AND 2000;

SELECT
  title,
  released_year
FROM books.books
WHERE released_year NOT BETWEEN 1990 AND 2015;

-- IN:
--

SELECT
  title,
  released_year
FROM books.books
WHERE author_lname IN ('Eggers', 'Gaiman');

SELECT
  title,
  released_year
FROM books.books
WHERE released_year > 2000
      AND released_year NOT IN
          (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016); -- Slow

SELECT
  title,
  released_year
FROM books.books
WHERE released_year >= 2000
      AND released_year % 2 != 0; -- Fast

-- CASE:
--

SELECT
  title,
  released_year,
  CASE
  WHEN released_year >= 2000
    THEN 'Modern Lit'
  ELSE '20th Century Lit'
  END AS era
FROM books.books;

SELECT
  title,
  stock_quantity,
  CASE
  WHEN stock_quantity BETWEEN 0 AND 50
    THEN '*'
  WHEN stock_quantity BETWEEN 51 AND 100
    THEN '**'
  WHEN stock_quantity BETWEEN 101 AND 150
    THEN '***'
  ELSE '****'
  END AS stock
FROM books.books;

SELECT
  author_fname,
  author_lname,
  CASE
  WHEN count(*) = 1
    THEN '1 book'
  ELSE concat(count(*), ' books')
  END AS count
FROM books.books
GROUP BY author_lname, author_fname;

---

DROP TABLE books.books;
DROP SCHEMA books;
