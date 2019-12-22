/* Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters,
 secondary sort them by ascending ID. */
 
SELECT name 
FROM students 
WHERE marks>75 
ORDER BY RIGHT(name, 3), id;