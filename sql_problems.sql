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


