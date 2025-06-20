SELECT 
    job_title_short,
    job_location,
CASE 
    WHEN  job_location = 'Anywhere' THEN 'Remote'
    WHEN job_location = 'Ney York, NY' THEN 'Local'
    ELSE 'onsite'
    END AS location_catrgory
FROM 
    job_postings_fact;

SELECT 
    job_title_short,
    company_id,
    job_location
FROM 
    january_jobs