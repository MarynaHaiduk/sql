### My solutions to HackerRank SQL problems:
- https://www.hackerrank.com/maryna_h

---

##### SQL Basic Queries:

####### SELECT the data from the table:
```
// select all data from the table
SELECT * FROM tableName;

// select specified columns from the table
SELECT columnName1, columnName2 FROM tableName;  

// select columns from the table with new temporary column name
SELECT columnName1, columnName2 AS "new column name" FROM tableName;  

// select columns from the table with new temporary table name
SELECT columnName1, columnName2 FROM tableName AS tableAlias;

// select with sorting data in the columns by asc/desc
SELECT columnName1, columnName2 FROM tableName ORDER BY columnName1 [ASC|DESC];
SELECT columnName1, columnName2 FROM tableName WHERE columnName1 operator 'value' ORDER BY columnName2 [ASC|DESC];

// select specified number of rows
SELECT columnName1, columnName2 FROM tableName LIMIT 5;

// select only limit rows start from offset
SELECT columnName1, columnName2 FROM tableName LIMIT 5 OFFSET 5;

// select unique rows without duplicates
SELECT DISTINCT columnName1, columnName2 FROM tableName;
SELECT COUNT(columnName1) - COUNT(DISTINCT columnName1) AS newColumnName FROM tableName;
      
// select with condition WHERE   
SELECT columnName1, columnName2 FROM tableName WHERE columnName1 operator 'value';

// select with rounding and choosing average:
SELECT ROUND(AVG(columnName1)) FROM tableName;

// count rows with specified condition (output the number)
SELECT COUNT(*) FROM tableName;
SELECT COUNT(columnName1) FROM tableName;    

// find sum of data in specified column
SELECT SUM(columnName1) FROM tableName;

// find average in the column
SELECT AVG(columnName1) FROM tableName;

// select max and min in the column and/or difference
SELECT MAX(columnName1) - MIN(columnName1) FROM tableName;

// select with condition AND|OR
SELECT columnName1, columnName2 FROM tableName WHERE condition operator 'value' AND|OR condition operator 'value';
``` 

####### DELETE the data from the table:
```
// delete rows from table
DELETE FROM tableName WHERE columnData=5;

// delete all rows from the entire table!!!
DELETE FROM tableName;

// delete database completly	
DROP DATABASE database_name;

// drops all tables!!!
DROP DATABASE 
```

####### Additional:
```
GROUP BY
SELECT column1, aggregate_function(column1) FROM tableName
WHERE column1 operator value GROUP BY column1

HAVING	
SELECT column1, aggregate_function(column1) FROM tableName WHERE column1 operator value
GROUP BY column1 HAVING aggregate_function(column1) operator value

IN	
SELECT column1(s) FROM tableName WHERE column1 IN (value1,value2,..);```

INNER JOIN	
SELECT column1(s) FROM tableName1 INNER JOIN tableName2 ON tableName1.column1=tableName2.column1

LEFT JOIN	
SELECT column1(s) FROM tableName1 LEFT JOIN tableName2 ON tableName1.column1=tableName2.column1

RIGHT JOIN	
SELECT column1(s) FROM tableName1 RIGHT JOIN tableName2 ON tableName1.column1=tableName2.column1

FULL JOIN	
SELECT column1(s) FROM tableName1 FULL JOIN tableName2 ON tableName1.column1=tableName2.column1

TRUNCATE TABLE	
TRUNCATE TABLE tableName;

UNION	
SELECT column1(s) FROM tableName1;

UNION ALL
SELECT column1(s) FROM tableName2;

Select with pattern:
SELECT columnName1 FROM tableName WHERE columnName1 LIKE pattern;

Select from all databases:
SELECT 'column1';

SELECT INTO
SELECT * INTO new_tableName [IN externaldatabase] FROM old_tableName;
or SELECT column1(s) INTO new_tableName [IN externaldatabase] FROM old_tableName

SELECT TOP
SELECT TOP number|percent column1(s) FROM tableName;

ALTER TABLE
ALTER TABLE tableName ADD column1 datatype;
or ALTER TABLE tableName DROP COLUMN column1;

BETWEEN
SELECT column1(s) FROM tableName WHERE column1 BETWEEN value1 AND value2;

CREATE DATABASE
CREATE DATABASE database_name;

CREATE INDEX
CREATE INDEX index_name ON tableName (column1);
or CREATE UNIQUE INDEX index_name ON tableName (column1);

CREATE VIEW
CREATE VIEW view_name AS SELECT column1(s) FROM tableName WHERE condition;

DROP INDEX
DROP INDEX tableName.index_name (SQL Server)
DROP INDEX index_name ON tableName (MS Access)
DROP INDEX index_name (DB2/Oracle)
ALTER TABLE tableName
DROP INDEX index_name (MySQL)
DROP TABLE	DROP TABLE tableName
```
  
####### UPDATE data in the table:
```
Insert row in table:
INSERT INTO tableName VALUES (value1, value2, value3,....);

Insert row in table:
INSERT INTO tableName (column1, column2) VALUES ('value1', 'value2');

Update specified data where column data = 5
UPDATE tableName SET column1=NULL, column2='value' WHERE columnData=5;
```

####### CREATE the table
```
CREATE TABLE tableName
(
    column1Name INTEGER,
    column2Name TEXT,
)
```

####### EXISTS	
```
IF EXISTS (SELECT * FROM tableName WHERE id = ?)
BEGIN
--do what needs to be done if exists
END
ELSE
BEGIN
--do what needs to be done if not
END
```