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
