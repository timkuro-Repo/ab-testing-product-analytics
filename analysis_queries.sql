SELECT experiment_group,
       COUNT(*) AS users,
       SUM(converted) AS conversions,
       ROUND(100.0 * SUM(converted) / COUNT(*), 2) AS conversion_rate,
       ROUND(AVG(session_duration_seconds), 2) AS avg_session_duration,
       ROUND(AVG(pages_viewed), 2) AS avg_pages_viewed
FROM ab_test_data
GROUP BY experiment_group;

SELECT experiment_group,
       device,
       COUNT(*) AS users,
       ROUND(100.0 * SUM(converted) / COUNT(*), 2) AS conversion_rate
FROM ab_test_data
GROUP BY experiment_group, device
ORDER BY device, experiment_group;
