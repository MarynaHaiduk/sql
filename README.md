# My solutions "MySQL HackerRank" problems.
* https://www.hackerrank.com/maryna_h

---

## Basic syntax

---

### Filter
* select all columns from table
```SELECT * FROM tableName;```

* select from all databases
```SELECT 'column1';```

* select specified columns from table
```SELECT column1, column2 FROM tableName;```

* select and change column name
```SELECT column1, column2 AS "new column name" FROM tableName;```
* or ```SELECT column1, column2 FROM tableName AS tableAlias;```

* sorting
```SELECT column1, column2 FROM tableName ORDER BY column1, column2 [ASC|DESC|column1];```

* select unique
```SELECT DISTINCT column1, column2 FROM tableName;```

* select with condition
```SELECT column1, column2 FROM tableName WHERE column1 operator 'value';```

* select only limit rows
```SELECT column1, column2 FROM tableName LIMIT 5;```

* select only limit rows start from offset
```SELECT column1, column2 FROM tableName LIMIT 5 OFFSET 5;```

* count rows with specified condition (output the number)
```
SELECT COUNT(*) FROM tableName;
SELECT COUNT(column1) FROM tableName;
```

* select with condition	
```SELECT column1, column2 FROM tableName WHERE condition operator 'value' AND|OR condition operator 'value';```

* select with pattern
```SELECT column1 FROM tableName WHERE column1 LIKE pattern;```

---

### Change data in table
* insert row in table
```INSERT INTO tableName VALUES (value1, value2, value3,....);```
* insert row in table
```INSERT INTO tableName (column1, column2) VALUES ('value1', 'value2');```

* update specified data where column data = 5
```UPDATE tableName SET column1=NULL, column2='value' WHERE columnData=5;```

---

### Delete data from table
* delete row from table
```DELETE FROM tableName WHERE columnData=5;```

* delete all rows from the entire table!!!
```DELETE FROM tableName;```



---

### Create
* create table
```
CREATE TABLE tableName
(
	column1Name INTEGER,
	column2Name TEXT,
)
```

---

### Additional

SELECT INTO	
```SELECT *
INTO new_tableName [IN externaldatabase]
FROM old_tableName
```
or
```
SELECT column1(s)
INTO new_tableName [IN externaldatabase]
FROM old_tableName
```

SELECT TOP	
```SELECT TOP number|percent column1(s) FROM tableName```

ALTER TABLE	
```ALTER TABLE tableName ADD column1 datatype```
or ```ALTER TABLE tableName DROP COLUMN column1```

BETWEEN	
```SELECT column1(s) FROM tableName WHERE column1 BETWEEN value1 AND value2```

CREATE DATABASE	
```CREATE DATABASE database_name```

CREATE INDEX	
```CREATE INDEX index_name ON tableName (column1)```
or ```CREATE UNIQUE INDEX index_name ON tableName (column1)```

CREATE VIEW	
```CREATE VIEW view_name AS SELECT column1(s) FROM tableName WHERE condition```

DROP DATABASE	
```DROP DATABASE database_name```

DROP INDEX	
```
DROP INDEX tableName.index_name (SQL Server)
DROP INDEX index_name ON tableName (MS Access)
DROP INDEX index_name (DB2/Oracle)
ALTER TABLE tableName
DROP INDEX index_name (MySQL)
DROP TABLE	DROP TABLE tableName
```

EXISTS	
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

GROUP BY
```
SELECT column1, aggregate_function(column1)
FROM tableName
WHERE column1 operator value
GROUP BY column1
```

HAVING	
```
SELECT column1, aggregate_function(column1)
FROM tableName
WHERE column1 operator value
GROUP BY column1
HAVING aggregate_function(column1) operator value
```

IN	
``` SELECT column1(s) FROM tableName WHERE column1 IN (value1,value2,..);```

INNER JOIN	
```SELECT column1(s) FROM tableName1 INNER JOIN tableName2
ON tableName1.column1=tableName2.column1
```

LEFT JOIN	
```SELECT column1(s) FROM tableName1 LEFT JOIN tableName2
ON tableName1.column1=tableName2.column1
```

RIGHT JOIN	
```SELECT column1(s) FROM tableName1
RIGHT JOIN tableName2 ON tableName1.column1=tableName2.column1
```

FULL JOIN	
```SELECT column1(s) FROM tableName1
FULL JOIN tableName2 ON tableName1.column1=tableName2.column1
```


TRUNCATE TABLE	
```TRUNCATE TABLE tableName
UNION	SELECT column1(s) FROM tableName1
```

UNION
```SELECT column1(s) FROM tableName2
UNION ALL	SELECT column1(s) FROM tableName1
```

UNION ALL
```SELECT column1(s) FROM tableName2```

