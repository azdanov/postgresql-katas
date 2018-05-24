# PostgreSQL Katas

[![Build Status](https://travis-ci.com/azdanov/postgresql-katas.svg?branch=master)](https://travis-ci.com/azdanov/postgresql-katas)

> Kata (型 or 形 literally: "form"), a Japanese word, are detailed choreographed patterns of movements practiced either solo or in pairs.

Some simple exercises to practise SQL in PostgreSQL database.

## CRUD

In computer programming, create, read, update, and delete (as an acronym CRUD) are the four basic functions of persistent storage.

| [PostgreSQL](https://www.postgresql.org/docs/10/static/sql-commands.html) | [crud.sql](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql)   |
| :-----------------------------------------------------------------------: | :----------------------------------------------------------------------------: |
| [INSERT](https://www.postgresql.org/docs/current/static/sql-insert.html)  | [INSERT](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql#L11) |
| [SELECT](https://www.postgresql.org/docs/current/static/sql-select.html)  | [SELECT](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql#L20) |
| [UPDATE](https://www.postgresql.org/docs/current/static/sql-update.html)  | [UPDATE](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql#L50) |
| [DELETE](https://www.postgresql.org/docs/current/static/sql-delete.html)  | [DELETE](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql#L60) |

## String Functions

SQL string functions are used primarily for string manipulation, e.g. combining strings together or replacing certain symbols or words.

| [PostgreSQL](https://www.postgresql.org/docs/10/static/functions-string.html)                                                                                                                          | [string_functions.sql](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql) |
| :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------: |
| [concat()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.4.1.1)                                                                                                     | [concat()](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql#L36)         |
| [substring()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.9.1.1)                                                                                                  | [substring()](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql#L44)      |
| [replace()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.32.1.1)                                                                                                   | [replace()](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql#L52)        |
| [reverse()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.33.1.1)                                                                                                   | [reverse()](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql#L57)        |
| [length()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.14.1.1)                                                                                                    | [length()](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql#L62)         |
| [upper()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.14.1.1) / [lower()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.5.1.1) | [upper()/lower()](https://github.com/azdanov/postgresql-katas/blob/master/string_functions.sql#L67)  |

## Refining Selections

> Refine - make minor changes so as to improve or clarify.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/sql-select.html)                   | [refining_selection.sql](https://github.com/azdanov/postgresql-katas/blob/master/refining_selection.sql) |
| :--------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------: |
| [DISTINCT](https://www.postgresql.org/docs/current/static/sql-select.html#SQL-DISTINCT)        | [DISTINCT](https://github.com/azdanov/postgresql-katas/blob/master/refining_selection.sql#L39)           |
| [ORDER BY](https://www.postgresql.org/docs/current/static/sql-select.html#SQL-ORDERBY)         | [ORDER BY](https://github.com/azdanov/postgresql-katas/blob/master/refining_selection.sql#L49)           |
| [LIMIT](https://www.postgresql.org/docs/current/static/sql-select.html#SQL-LIMIT)              | [LIMIT](https://github.com/azdanov/postgresql-katas/blob/master/refining_selection.sql#L90)              |
| [LIKE/ILIKE](https://www.postgresql.org/docs/10/static/functions-matching.html#FUNCTIONS-LIKE) | [LIKE/ILIKE](https://github.com/azdanov/postgresql-katas/blob/master/refining_selection.sql#L116)        |

## Aggregate Functions

An aggregate function is a function where the values of multiple rows are grouped together to form a single value of more significant meaning or measurement such as a set, a bag or a list.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/functions-aggregate.html)                           | [aggregate_functions.sql](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql) |
| :-------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------: |
| [count()](https://www.postgresql.org/docs/current/static/functions-aggregate.html#id-1.5.8.25.4.2.2.8.1.1)      | [count()](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql#L39)             |
| [GROUP BY](https://www.postgresql.org/docs/current/static/queries-table-expressions.html#QUERIES-GROUPING-SETS) | [GROUP BY](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql#L51)            |
| [min()/max()](https://www.postgresql.org/docs/10/static/functions-aggregate.html#id-1.5.8.25.4.2.2.15.1.1)      | [min()/max()](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql#L68)         |
| [sum()](https://www.postgresql.org/docs/10/static/functions-aggregate.html#id-1.5.8.25.4.2.2.18.1.1)            | [sum()](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql#L103)              |
| [avg()](https://www.postgresql.org/docs/10/static/functions-aggregate.html#id-1.5.8.25.4.2.2.3.1.1)             | [avg()](https://github.com/azdanov/postgresql-katas/blob/master/aggregate_functions.sql#L115)              |

## Data Types

PostgreSQL has a rich set of native data types available to users. Such as _boolean_, _character_, _numeric_, _temporal_, _array_, _json_, _uuid_, and other special types.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/datatype.html)                                                                                  | [data_types.sql](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql)                       |
| :---------------------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------: |
| [CHAR/VARCHAR](https://www.postgresql.org/docs/current/static/datatype-character.html)                                                                      | [CHAR/VARCHAR](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L1)                      |
| [NUMERIC](https://www.postgresql.org/docs/current/static/datatype-numeric.html#DATATYPE-NUMERIC-DECIMAL)                                                    | [NUMERIC](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L31)                          |
| [FLOAT/DOUBLE](https://www.postgresql.org/docs/current/static/datatype-numeric.html#DATATYPE-FLOAT)                                                         | [FLOAT/DOUBLE](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L67)                     |
| [DATE/TIME](https://www.postgresql.org/docs/current/static/datatype-datetime.html)                                                                          | [DATE/TIME](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L95)                        |
| [current_date/current_time/now()](https://www.postgresql.org/docs/current/static/functions-datetime.html#FUNCTIONS-DATETIME-CURRENT)                        | [current_date/current_time/now()](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L119) |
| [to_char()](https://www.postgresql.org/docs/10/static/functions-formatting.html)                                                                            | [to_char()](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L129)                       |
| [INTERVAL](https://www.postgresql.org/docs/10/static/functions-datetime.html)                                                                               | [INTERVAL](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L221)                        |
| [TIMESTAMP](https://www.postgresql.org/docs/10/static/datatype-datetime.html)                                                                               | [TIMESTAMP](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L267)                       |
| [FUNCTION](https://www.postgresql.org/docs/10/static/sql-createfunction.html) / [TRIGGER](https://www.postgresql.org/docs/10/static/sql-createtrigger.html) | [FUNCTION/TRIGGER](https://github.com/azdanov/postgresql-katas/blob/master/data_types.sql#L286)                |

## Logical Expressions

Logical operators are typically used with [Boolean](https://www.postgresql.org/docs/current/static/datatype-boolean.html) (logical) values. There are three logical operators in PostgreSQL: _OR_, _AND_, _NOT_.

| [PostgreSQL](https://www.postgresql.org/docs/current/static/functions-logical.html)                             | [logical_expressions.sql](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql)        |
| :-------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------: |
| [NOT Equal](https://www.postgresql.org/docs/current/static/functions-comparison.html)                           | [NOT Equal](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L41)                  |
| [NOT LIKE](https://www.postgresql.org/docs/current/static/functions-matching.html#FUNCTIONS-LIKE)               | [NOT LIKE](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L56)                   |
| [Greater Than](https://www.postgresql.org/docs/current/static/functions-comparison.html)                        | [Greater Than](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L63)               |
| [Less Than](https://www.postgresql.org/docs/current/static/functions-comparison.html)                           | [Less Than](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L72)                  |
| [Greater/Less Than Or Equal](https://www.postgresql.org/docs/current/static/functions-comparison.html)          | [Greater/Less Than Or Equal](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L81) |
| [Logical AND](https://www.postgresql.org/docs/current/static/functions-logical.html)                            | [Logical AND](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L96)                |
| [Logical OR](https://www.postgresql.org/docs/current/static/functions-logical.html)                             | [Logical OR](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L105)                |
| [BETWEEN](https://www.postgresql.org/docs/current/static/functions-comparison.html)                             | [BETWEEN](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L114)                   |
| [IN](https://www.postgresql.org/docs/current/static/functions-comparisons.html#FUNCTIONS-COMPARISONS-IN-SCALAR) | [IN](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L129)                        |
| [CASE](https://www.postgresql.org/docs/current/static/functions-conditional.html#FUNCTIONS-CASE)                | [CASE](https://github.com/azdanov/postgresql-katas/blob/master/logical_expressions.sql#L153)                      |

## One-to-Many

In a one-to-many relationship, one record in a table can be associated with one or more records in another table. For example, each customer can have many sales orders.

| [One-to-Many](https://fmhelp.filemaker.com/help/16/fmp/en/index.html#page/FMP_Help/one-to-many-relationships.html)    | [one_to_many.sql](https://github.com/azdanov/postgresql-katas/blob/master/one_to_many.sql)        |
| :-------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------: |
| [PRIMARY KEY](https://www.postgresql.org/docs/10/static/ddl-constraints.html#DDL-CONSTRAINTS-PRIMARY-KEYS)            | [PRIMARY KEY](https://github.com/azdanov/postgresql-katas/blob/master/one_to_many.sql#L4)         |
| [FOREIGN KEY](https://www.postgresql.org/docs/10/static/ddl-constraints.html#DDL-CONSTRAINTS-FK)                      | [FOREIGN KEY](https://github.com/azdanov/postgresql-katas/blob/master/one_to_many.sql#L4)         |
| [JOIN](https://www.postgresql.org/docs/10/static/sql-select.html)                                                     | [JOIN](https://github.com/azdanov/postgresql-katas/blob/master/one_to_many.sql#L67)               |
| [coalesce()](https://www.postgresql.org/docs/current/static/functions-conditional.html#FUNCTIONS-COALESCE-NVL-IFNULL) | [coalesce()](https://github.com/azdanov/postgresql-katas/blob/master/one_to_many.sql#L156)        |
| [ON DELETE CASCADE](https://www.postgresql.org/docs/current/static/ddl-constraints.html)                              | [ON DELETE CASCADE](https://github.com/azdanov/postgresql-katas/blob/master/one_to_many.sql#L237) |

## Many-to-Many

A many-to-many relationship occurs when multiple records in a table are associated with multiple records in another table. For example, a many-to-many relationship exists between customers and products: customers can purchase various products, and products can be purchased by many customers.

| [Many-to-Many](https://fmhelp.filemaker.com/help/16/fmp/en/index.html#page/FMP_Help%2Fmany-to-many-relationships.html%23) | [many_to_many.sql](https://github.com/azdanov/postgresql-katas/blob/master/many_to_many.sql) |
| :-----------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------: |

## Example Instagram Schema

A simple schema for an Instagram like app: [instagram.sql](https://github.com/azdanov/postgresql-katas/blob/master/instagram.sql)

![instagram](http://www.plantuml.com/plantuml/svg/nLVRRjiu47tdLqoTXqQeWnXjqQQ1LwYnbGkZYPlw0hJOB0n66bj49DALw6sSHVwzlEX2EtBYTekkNoHHSywSEHoIyjjSqaokqWGOLxUBZAOaHXfXHW2wSy4bvEmM_tZ-qX-pT9aW3Ceu68SnfhHxhADyWZmgW2I_Pdn9TKYqPF2Yqo5F8fmpZZ2XLmaUSffYEy8yz21CQ9w37W2QGqiFjg3RXSD9-w3VxwcV1xvVuVEloU6D1zrG928xFUYetqd7l-aUcu4wRiumYTp8Lwyw-9esHQvuA9dW9fZvHVnLGiDh5JrzrkayF_7jzOtVFMQE5imOJMRBZAKqMy-kSVrGGYDz78m6lJEu60tEUwCly27uubLq6pnjMD-hqa519MmhcyBLMhSh5Hco1QyIjE7MCwhw7qV1uFtmGUAIhMJV5ZSA-i4e6FuPZ673mdLL_mxcsvBH8p6B45AKiOXo-v1Bp538zH9pGfu2Siaaq_UsZrPg2l8sjCorvS6_gcSRPeL5ddfXMqA7wcwpbK-2pnEO3WUVfW4CFqvWE3qxgsF33Ad4Q4Pb4Jqu3yQJtla5l0lwlUdPf6uUBhvv7haZH8g5AW0pfKNnM9dBM4YXTTgRGkW3Kai1Qdo1irMME6fTcMvHCmKrKOFX97WVZ1e3VxWY0tNwfiZKXi9wg_UkhdKkaaHyqyKMTrMrLe4TtLDk4Oo_fpP7sbPzZN7O5EVEvGQVMufn380BYN0bf1Gf7CpdyzCI3GgjUZrVPPXVSc6MhaN3KdMMUj2qs_qrKxjotMJcQSjxysOlBnNuiJZ7a9At3MMdDzbcETjWPJOPLlCK-LsZChQ8vMwV06aONt930R4wIbQSVLsXoLOxLLYquSsZgr2BCGUKirlynyQxqrk5bPImQzIQpBKGjUUgtdTMVrhcuoj_dpPmdQrOAjNAYHzO27P-jLTcAMYwqiXGfAaw8BINvUt-HyAlzDacdqcyaJlsxVzrGkxqIPfXGZLp7hEbMX-60ewE_28IJg7LCyIGqhLQJ__W9KyfNnVlMmwYD7itffeEKh3VXzbvtOchivbbiZkLNKLk7WVGcAH0r1cASsihnoNN632GycJx2P3-JY5w-t7CDbkrHQex0xnIwXHBf3xAOSDsfx1xuBeyDw_Pw_IKqqJrXVQJ41Twz9VwqegG_wqepMPPfd36dVYcryR2fXVb11BoLlqxK7yolWC0 "instagram")
