-- 176. Second Highest Salary


-- https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select max(salary) as SecondHighestSalary
from employee
where salary < (select MAX(Salary) from Employee);