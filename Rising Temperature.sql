-- Rising Temperature


-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

select a.id 
from weather a, weather b
where a.temperature>b.temperature
AND DATEDIFF(a.Recorddate, b.Recorddate) = 1; 