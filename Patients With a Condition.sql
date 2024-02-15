
-- 1527. Patients With a Condition

-- https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select * from patients
where conditions like
'% DIAB1%' OR conditions LIKE 'DIAB1%';