SELECT DATE_TRUNC('week', joined_date) AS week_start, COUNT(*) AS new_providers
FROM job_providers
GROUP BY week_start
ORDER BY week_start;
