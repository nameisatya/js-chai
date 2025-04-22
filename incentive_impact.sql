SELECT 
  ir.incentive_type,
  COUNT(DISTINCT ir.provider_id) AS total_incentivized,
  ROUND(AVG(jp_count), 2) AS avg_posts_after_incentive
FROM incentive_redemptions ir
JOIN (
  SELECT provider_id, COUNT(*) AS jp_count
  FROM job_posts
  GROUP BY provider_id
) jp ON ir.provider_id = jp.provider_id
GROUP BY ir.incentive_type;
