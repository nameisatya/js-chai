SELECT 
  jp.provider_id,
  MIN(jp.post_date) AS first_post,
  MAX(jp.post_date) AS last_post,
  CASE 
    WHEN MAX(jp.post_date) >= MIN(jp.post_date) + INTERVAL '7 days' 
    THEN 'Retained (7+ days)'
    ELSE 'Not Retained'
  END AS retention_status
FROM job_posts jp
GROUP BY jp.provider_id;
