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
