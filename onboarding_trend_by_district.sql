SELECT district, COUNT(*) AS total_onboarded
FROM job_providers
GROUP BY district
ORDER BY total_onboarded DESC;
