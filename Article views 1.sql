-- https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Article views 1

select author_id as id  from views 
where author_id= viewer_id 
group by id
order by id;