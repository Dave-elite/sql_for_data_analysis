--query relevant data for Data analysis
/*Multiple line query  

*/
SELECT 
	job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short = 'Data Analyst'
ORDER BY
	salary_year_avg DESC
    
--COMPARISON OPERATORS
--query relevant data for Data analysis
/*Multiple line query  

*/
SELECT 
	job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM 
	job_postings_fact  
WHERE 
	salary_year_avg > 100000
    AND job_title = 'Data Analyst'




--query relevant data for Data analysis
/*Multiple line query  

*/
SELECT 
	job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM 
	job_postings_fact  
WHERE 
	salary_year_avg BETWEEN 60000 AND 90000




--query relevant data for Data analysis
/*Multiple line query  

*/
SELECT 
	job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM 
	job_postings_fact  
WHERE 
	job_title_short IN ('Data Analyst', 'Data Engineer')




SELECT
	job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
	job_postings_fact
WHERE 
	job_title_short in ('Data Analyst', 'Business Analyst')
    AND (
    (job_title_short = 'Data Analyst' AND salary_year_avg > 100000)
      OR 
      (job_title_short = 'Business Analyst' AND salary_year_avg > 80000)
    )
    AND job_location IN ('Boston, MA', 'Anywhere')

    SELECT
	job_title_short,
    job_title,
    job_location,
    salary_year_avg
FROM
	job_postings_fact
WHERE 
	job_title LIKE '%Data_Analyst'



    SELECT
	job_title_short AS job_title,
    job_via AS online_platform,
    job_location AS location,
    salary_year_avg AS salary
FROM
	job_postings_fact AS jpc
SELECT
	job_title_short AS job_title,
    job_location AS location,
    salary_year_avg AS salary
FROM
	job_postings_fact 
WHERE 
	(job_title LIKE '%Data%' OR job_title LIKE '%Business%') AND
    job_title LIKE '%Analyst%' AND
    job_title NOT LIKE '%Senior%' 


-- AS is used to rename the the column name
SELECT
	job_title_short AS job_title,
    job_location AS location,
    salary_year_avg AS salary
FROM
	job_postings_fact 
WHERE 
-- %Data% this will match anyword that has the word Data anywhere in it % symbols wre wildcards
	(job_title LIKE '%Data%' OR job_title LIKE '%Business%') AND
    (job_title LIKE '%Analyst%') AND
    (job_title NOT LIKE '%Senior%');
 
 --rate drop
 SELECT 
	project_company,
    nerd_id,
    nerd_role,
    hours_rate AS rate_original,
    hours_rate - 5 AS rate_drop
FROM 
	invoices_fact
  
  SELECT 
	project_company,
    nerd_id,
    nerd_role,
    hours_spent,
    hours_rate AS rate_original,
    (hours_rate + 5) * hours_spent AS project_total
FROM 
	invoices_fact
 -- projects that will cost 1000 after the hike 
 -- project total (after hike) = rate * hours_spent
 WHERE
project_total > 1000
 	
 
-- AS is used to rename the the column name
--Aggregation functions
SELECT
	job_title_short as Jobs,
    AVG(salary_year_avg) AS salary_avg,
    MIN(salary_year_avg) AS salary_min,
    MAX(salary_year_avg) AS salary_max
    
FROM
	job_postings_fact 
GROUP BY 
	job_title_short

 -- AS is used to rename the the column name
SELECT
	job_title_short as Jobs,
    COUNT(job_title_short) AS job_count,
    AVG(salary_year_avg) AS salary_avg,
    MIN(salary_year_avg) AS salary_min,
    MAX(salary_year_avg) AS salary_max
    
FROM
	job_postings_fact 
GROUP BY 
	job_title_short
    --if we try to use WHERE using the AGGREGATE it will return an error so that is why we are using HAVING and it should be between ORDER BY AND GROUP BY
HAVING
	COUNT(job_title_short) > 100
ORDER BY
	salary_avg

--project_cost working with Aggregate functions to solve the problem
SELECT 
	project_id,
    SUM(hours_spent*hours_rate) AS project_original_cost,
    (hours_rate + 5) AS rate_hike,
    SUM(hours_spent * (hours_rate + 5)) AS project_projected_cost,
    SUM(hours_spent * (hours_rate + 5)) - SUM(hours_spent*hours_rate) AS difference
   
FROM 
	invoices_fact
GROUP BY
	project_id

    
 


 