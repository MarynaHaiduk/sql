### My SQL HackerRank solutions:

- https://www.hackerrank.com/maryna_h

--

##### Database management system:

A database management system (DBMS) is a software package designed to define, manipulate, retrieve and manage data in a
database. (MySQL, PostgreSQL, SQLite)

##### Types:

* SQLite types: text / numeric / integer / real / blob
* MySQL types: char / varchar / smallint / int / bigint / float / double

##### Links:

* [SQLite Download](https://www.sqlite.org/download.html)
* [Command Line Shell For SQLite](https://www.sqlite.org/cli.html)
* [SQL Quick Reference](https://www.w3schools.com/sql/sql_quickref.asp)


##### SQL Basic Queries:

```
SELECT * FROM tableName; 
SELECT column1, column2 FROM tableName;  
SELECT column1, column2 FROM tableName WHERE id=3;  
SELECT * FROM tableName WHERE column1="column value"; 
SELECT column1 FROM tableName WHERE column1 IN (value1, value2,..);`// a couple
SELECT * FROM tableName WHERE id > 100 OR column1="column value"; 
SELECT LTRIM("    SQL data        ") AS column_name;  // Remove leading spaces from a string
SELECT RTRIM("    SQL data        ") AS column_name; // Remove trailing spaces from a string


// patterns
SELECT column1 FROM tableName WHERE column1 LIKE pattern;
SELECT column1 FROM tableName WHERE column1 LIKE "%a%"; // have 'a' in it
SELECT column1, column2 AS "new column name" FROM tableName;  
SELECT column1, column2 FROM tableName AS tableAlias;
SELECT column1, column2 FROM tableName WHERE columnName1 operator 'value';
SELECT column1, column2 FROM tableName WHERE condition operator 'value' AND|OR condition operator 'value';
SELECT column1(s) FROM tableName1 INNER JOIN tableName2 ON tableName1.column1=tableName2.column1;
SELECT column1(s) FROM tableName1 LEFT JOIN tableName2 ON tableName1.column1=tableName2.column1;
SELECT column1(s) FROM tableName1 RIGHT JOIN tableName2 ON tableName1.column1=tableName2.column1;
SELECT column1(s) FROM tableName1 FULL JOIN tableName2 ON tableName1.column1=tableName2.column1;
SELECT column1(s) FROM tableName WHERE column1 BETWEEN value1 AND value2;
SELECT * INTO new_tableName [IN externaldatabase] FROM old_tableName;
SELECT column1(s) INTO new_tableName [IN externaldatabase] FROM old_tableName;

// clauses
SELECT column1, column2 FROM tableName LIMIT 5;
SELECT column1, column2 FROM tableName LIMIT 5 OFFSET 5;
SELECT column1, column2 FROM tableName ORDER BY columnName1 [ASC|DESC];
SELECT column1, column2 FROM tableName WHERE columnName1 operator 'value' ORDER BY column2 [ASC|DESC];
SELECT column1, aggregate_function(column1) FROM tableName WHERE column1 operator value GROUP BY column1;
SELECT column1 FROM tableName WHERE column1="value" GROUP BY column1 HAVING column1="value";

// functions
SELECT ROUND(AVG(column1)) FROM tableName;
SELECT COUNT(*) FROM tableName;
SELECT COUNT(column1) FROM tableName;    
SELECT SUM(column1) FROM tableName;
SELECT AVG(column1) FROM tableName;
SELECT MAX(column1) - MIN(column1) FROM tableName;
SELECT DISTINCT column1, column2 FROM tableName;
SELECT COUNT(column1) - COUNT(DISTINCT column1) AS newColumnName FROM tableName;
SELECT TOP number|percent column1 FROM tableName;

// insert
INSERT INTO tableName VALUES (value1, value2, value3,....);
INSERT INTO tableName (column1, column2) VALUES ('value1', 'value2');
UPDATE tableName SET column1=NULL, column2='value' WHERE columnData=5;

// delete
DELETE FROM tableName WHERE id=5;
DELETE FROM tableName; // delete all rows from the entire table
DROP DATABASE database_name; // delete database completly
DROP DATABASE // drops all tables
DROP INDEX tableName.index_name (SQL Server);
DROP INDEX index_name ON tableName (MS Access);
DROP INDEX index_name (DB2/Oracle);
ALTER TABLE tableName;
DROP INDEX index_name (MySQL);
DROP TABLE	DROP TABLE tableName;

// create
CREATE DATABASE database_name;

CREATE TABLE tableName
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    column2 TEXT NOT NULL,
    column3 INTEGER NOT NULL
);

CREATE INDEX index_name ON tableName (column1);
CREATE UNIQUE INDEX index_name ON tableName (column1);
CREATE VIEW view_name AS SELECT column1(s) FROM tableName WHERE condition;

// update
UPDATE tableName SET column1="value" WHERE column2="value" AND column3="value";

// additional:
TRUNCATE TABLE tableName;

UNION	
SELECT column1(s) FROM tableName1;

UNION ALL
SELECT column1(s) FROM tableName2;

ALTER TABLE tableName ADD column1 datatype;
ALTER TABLE tableName DROP COLUMN column1;

IF EXISTS (SELECT * FROM tableName WHERE id = ?)
BEGIN
--do what needs to be done if exists
END
ELSE
BEGIN
--do what needs to be done if not
END
```
