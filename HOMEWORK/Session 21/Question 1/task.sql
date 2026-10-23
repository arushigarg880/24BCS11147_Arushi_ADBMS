-- HackerRank: SQL Projects (MySQL)
WITH ranked AS (
    SELECT Start_Date,
           End_Date,
           ROW_NUMBER() OVER (ORDER BY Start_Date) AS rn
    FROM Projects
), grouped AS (
    SELECT Start_Date,
           End_Date,
           DATE_SUB(Start_Date, INTERVAL rn DAY) AS grp
    FROM ranked
)
SELECT MIN(Start_Date) AS Start_Date,
       MAX(End_Date) AS End_Date
FROM grouped
GROUP BY grp
ORDER BY COUNT(*) ASC, Start_Date ASC;
