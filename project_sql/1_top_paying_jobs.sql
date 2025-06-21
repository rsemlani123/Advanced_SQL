/*
Questons : what are the top paying data analasyt jobs?
- Identify the top 10 highest- paying Data Analyst roles that are available remotely.
-Focuses on job posting with specified salaries (remove null).
- Why Highlight the top-paying opportunities for Data Analysts, offering insinghts into 
*/

-- project query 1 
SELECT 
    job_id,
    job_title,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC 
LIMIT 10 



