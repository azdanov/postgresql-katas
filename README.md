# PostgreSQL Katas

[![Build Status](https://travis-ci.com/azdanov/postgresql-katas.svg?branch=master)](https://travis-ci.com/azdanov/postgresql-katas)

> Kata (型 or 形 literally: "form"), a Japanese word, are detailed choreographed patterns of movements practiced either solo or in pairs.

Some simple exercises to practise SQL in PostgreSQL database.

## CRUD

In computer programming, create, read, update, and delete (as an acronym CRUD) are the four basic functions of persistent storage.

| [PostgreSQL](https://www.postgresql.org/docs/10/static/sql-commands.html) | [crud.sql](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql) |
|:---:|:---:|
| [INSERT](https://www.postgresql.org/docs/current/static/sql-insert.html) | [INSERT](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L11)  |
| [SELECT](https://www.postgresql.org/docs/current/static/sql-select.html) | [SELECT](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L20) |
| [UPDATE](https://www.postgresql.org/docs/current/static/sql-update.html) | [UPDATE](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L50) |
| [DELETE](https://www.postgresql.org/docs/current/static/sql-delete.html) | [DELETE](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/crud.sql#L60) |

## String Functions

SQL string functions are used primarily for string manipulation, e.g combining strings together or replacing certain symbols or words.

| [PostgreSQL](https://www.postgresql.org/docs/10/static/functions-string.html) | [crud.sql](https://github.com/azdanov/postgresql-katas/blob/master/crud.sql) |
|:---:|:---:|
| [concat()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.4.1.1) | [concat()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L36)  |
| [substring()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.9.1.1) | [substring()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L44) |
| [replace()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.32.1.1) | [replace()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L52) |
| [reverse()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.33.1.1) | [reverse()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L57) |
| [length()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.7.2.2.14.1.1) | [length()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L62) |
| [upper()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.14.1.1) / [lower()](https://www.postgresql.org/docs/10/static/functions-string.html#id-1.5.8.9.5.2.2.5.1.1) | [upper()/lower()](https://github.com/azdanov/postgresql-katas/blob/f6298405a7796a9bc8b1502e1df8d373e5e25b0f/string_functions.sql#L67) |
