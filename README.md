# PostgreSQL Katas

[![Build Status](https://travis-ci.com/azdanov/postgresql-katas.svg?branch=master)](https://travis-ci.com/azdanov/postgresql-katas)

> Kata (型 or 形 literally: "form"), a Japanese word, are detailed choreographed patterns of movements practiced either solo or in pairs.

Some simple exercises to practise SQL in PostgreSQL database.

## CRUD

In computer programming, create, read, update, and delete (as an acronym CRUD) are the four basic functions of persistent storage.

| [PostgreSQL](https://www.postgresql.org/docs/10/static/sql-commands.html) | [crud.sql](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql)                                     |
| :-----------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------: |
| [INSERT](https://www.postgresql.org/docs/current/static/sql-insert.html)  | [INSERT](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L11) |
| [SELECT](https://www.postgresql.org/docs/current/static/sql-select.html)  | [SELECT](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L20) |
| [UPDATE](https://www.postgresql.org/docs/current/static/sql-update.html)  | [UPDATE](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L50) |
| [DELETE](https://www.postgresql.org/docs/current/static/sql-delete.html)  | [DELETE](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L60) |

## String Functions

SQL string functions are used primarily for string manipulation, e.g. combining strings together or replacing certain symbols or words.

| [PostgreSQL](https://www.postgresql.org/docs/10/static/functions-string.html)                                                                                                                          | [string_functions.sql](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql)                                  |
| :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------------: |
| [concat()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.4.1.1)                                                                                                     | [concat()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L36)        |
| [substring()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.9.1.1)                                                                                                  | [substring()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L44)     |
| [replace()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.32.1.1)                                                                                                   | [replace()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L52)       |
| [reverse()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.33.1.1)                                                                                                   | [reverse()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L57)       |
| [length()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.14.1.1)                                                                                                    | [length()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L62)        |
| [upper()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.14.1.1) / [lower()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.5.1.1) | [upper()/lower()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L67) |

## Refining Selections

> Refine - make minor changes so as to improve or clarify.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/sql-select.html)                   | [refining_selection.sql](https://github.com/azdanov/postgresql-katas/blob/master/refining_selection.sql)                            |
| :--------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------------------: |
| [DISTINCT](https://www.postgresql.org/docs/current/static/sql-select.html#SQL-DISTINCT)        | [DISTINCT](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/refining_selection.sql#L38)    |
| [ORDER BY](https://www.postgresql.org/docs/current/static/sql-select.html#SQL-ORDERBY)         | [ORDER BY](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/refining_selection.sql#L48)    |
| [LIMIT](https://www.postgresql.org/docs/current/static/sql-select.html#SQL-LIMIT)              | [LIMIT](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/refining_selection.sql#L89)       |
| [LIKE/ILIKE](https://www.postgresql.org/docs/10/static/functions-matching.html#FUNCTIONS-LIKE) | [LIKE/ILIKE](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/refining_selection.sql#L115) |

## Aggregate Functions

An aggregate function is a function where the values of multiple rows are grouped together to form a single value of more significant meaning or measurement such as a set, a bag or a list.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/functions-aggregate.html)                           | [aggregate_functions.sql](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql)                           |
| :-------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------------: |
| [count()](https://www.postgresql.org/docs/current/static/functions-aggregate.html#id-1.5.8.25.4.2.2.8.1.1)      | [count()](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/aggregate_functions.sql#L38)     |
| [GROUP BY](https://www.postgresql.org/docs/current/static/queries-table-expressions.html#QUERIES-GROUPING-SETS) | [GROUP BY](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/aggregate_functions.sql#L50)    |
| [min()/max()](https://www.postgresql.org/docs/10/static/functions-aggregate.html#id-1.5.8.25.4.2.2.15.1.1)      | [min()/max()](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/aggregate_functions.sql#L67) |
| [sum()](https://www.postgresql.org/docs/10/static/functions-aggregate.html#id-1.5.8.25.4.2.2.18.1.1)            | [sum()](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/aggregate_functions.sql#L102)      |
| [avg()](https://www.postgresql.org/docs/10/static/functions-aggregate.html#id-1.5.8.25.4.2.2.3.1.1)             | [avg()](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/aggregate_functions.sql#L114)      |

## Data Types

PostgreSQL has a rich set of native data types available to users. Such as _boolean_, _character_, _numeric_, _temporal_, _array_, _json_, _uuid_, and other special types.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/datatype.html)                                                                                  | [data_types.sql](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql)                                                         |
| :---------------------------------------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------------------------: |
| [CHAR/VARCHAR](https://www.postgresql.org/docs/current/static/datatype-character.html)                                                                      | [CHAR/VARCHAR](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L1)                      |
| [NUMERIC](https://www.postgresql.org/docs/current/static/datatype-numeric.html#DATATYPE-NUMERIC-DECIMAL)                                                    | [NUMERIC](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L31)                          |
| [FLOAT/DOUBLE](https://www.postgresql.org/docs/current/static/datatype-numeric.html#DATATYPE-FLOAT)                                                         | [FLOAT/DOUBLE](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L66)                     |
| [DATE/TIME](https://www.postgresql.org/docs/current/static/datatype-datetime.html)                                                                          | [DATE/TIME](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L93)                        |
| [current_date/current_time/now()](https://www.postgresql.org/docs/current/static/functions-datetime.html#FUNCTIONS-DATETIME-CURRENT)                        | [current_date/current_time/now()](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L116) |
| [to_char()](https://www.postgresql.org/docs/10/static/functions-formatting.html)                                                                            | [to_char()](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L126)                       |
| [INTERVAL](https://www.postgresql.org/docs/10/static/functions-datetime.html)                                                                               | [INTERVAL](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L218)                        |
| [TIMESTAMP](https://www.postgresql.org/docs/10/static/datatype-datetime.html)                                                                               | [TIMESTAMP](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L264)                       |
| [FUNCTION](https://www.postgresql.org/docs/10/static/sql-createfunction.html) / [TRIGGER](https://www.postgresql.org/docs/10/static/sql-createtrigger.html) | [FUNCTION/TRIGGER](https://github.com/azdanov/postgresql-katas/blob/e9427fc10cb1cf6f08b34745a37b95271a8a23a5/data_types.sql#L282)                |
