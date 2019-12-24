SELECT
    CASE
        WHEN A=B AND B=C THEN "Equilateral"
        WHEN A+B<=C THEN "Not A Triangle"
        WHEN A+C<=B THEN "Not A Triangle"
        WHEN B+C<=A THEN "Not A Triangle"
        WHEN A=B AND A<>C THEN "Isosceles"
        WHEN A=C AND A<>B THEN "Isosceles"
        WHEN B=C AND A<>B THEN "Isosceles"
        ELSE "Scalene"
    END
FROM triangles;
