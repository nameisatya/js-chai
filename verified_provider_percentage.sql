SELECT 
  district,
  ROUND(SUM(CASE WHEN verified THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS verified_percentage
FROM job_providers
GROUP BY district;
