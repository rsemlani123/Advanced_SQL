


WITH top_paying_jobs AS(
SELECT 
    job_id,
    job_title,
    salary_year_avg
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
)

Select 
    top_paying_jobs.*,
    skills 
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
    salary_year_avg DESC 

/*
 The analysis of the top 10 Data Analyst job postings from 2023 shows a strong emphasis on technical and analytical skills. The most commonly required skills are:

* **SQL** – appears in almost every posting, making it the foundational skill.
* **Python** – frequently listed, reflecting the need for programming and data analysis automation.
* **Excel** – still highly relevant, especially for day-to-day reporting and basic analysis.
* **Data Visualization Tools** – such as Tableau and Power BI, are in high demand, showing the importance of presenting insights clearly.
* **Cloud Platforms** – like AWS and Google Cloud appear occasionally, hinting at a growing need for cloud data handling.
* **Statistics & Data Warehousing** – featured in several listings, indicating a preference for candidates who understand data structures and analytical concepts.

In short: **SQL, Python, Excel, and visualization tools are essential, while familiarity with cloud technologies and data warehousing adds a competitive edge.**
*/


