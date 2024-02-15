-- 1211. Queries Quality and Percentage
-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50



SELECT
    query_name,
    ROUND(SUM(rating / position) / COUNT(*), 2) AS quality,
    ROUND(COUNT(IF(rating < 3, 0 ,NULL)) / COUNT(*) * 100, 2) 
    AS poor_query_percentage
FROM Queries
GROUP BY query_name