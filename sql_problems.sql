-- In the job_posting_fact table only get jobs that have an average yearly salary of $65000 or greater. 
-- Also get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. 
SELECT 
	job_id, 
    job_title_short, 
    job_location, 
    job_via,
    salary_year_avg
FROM job_postings_fact
WHERE salary_year_avg > 65000

-- PROBELM 2 SQL FOR DATA ANALYSIS --

-- From the job_posting_fact return the follwoing columns: job_id, job_title_short,job_location, job_via, 
-- job_posted_date, and salary_year_avg. Also, rename the following: job_via to job_posted_site and salary_year_avg to avg_yearly_salary 

SELECT 
	job_id, 
    job_title_short, 
    job_location, 
    job_via AS job_posted_site,
    salary_year_avg AS avg_yearly_salary
FROM job_postings_fact

-- PROBLEM 3 SQL FOR DATA ANALYSIS

-- Look for non-senior data analyst or business analyst roles 
-- only get the job titles that include wither 'Data' or 'Business'
-- Also include those with 'Analyst' in any part of the title 
-- Don't include any job titles with 'Senior' followed by any character
SELECT 
	job_title_short, 
    job_title,
    salary_year_avg,
    job_location
	
FROM job_postings_fact
WHERE (job_title_short LIKE '%Data%' OR '%Business%') AND
    (job_title_short LIKE '%Analyst%') AND
    job_title NOT LIKE '%Senior%'

-- PROBLEM 4 SQL FOR DATA ANALYSIS
-- in the job_posting_fact table count the total number of job postings that offer health insurance. 
-- Use the job_health_insurance column to determine if a job posting offers health insurance (True means it does offer health insurance
SELECT 
	COUNT(*) AS total_health_insurance_jobs
	
FROM job_postings_fact
WHERE 
	job_health_insurance = 1;
