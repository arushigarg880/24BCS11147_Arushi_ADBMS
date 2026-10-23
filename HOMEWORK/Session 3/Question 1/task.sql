-- Sending vs. Opening Snaps (DataLemur, PostgreSQL)
WITH totals AS (
    SELECT u.age_bucket,
           SUM(a.time_spent) FILTER (WHERE a.activity_type = 'send') AS send_time,
           SUM(a.time_spent) FILTER (WHERE a.activity_type = 'open') AS open_time
    FROM activities AS a
    JOIN age_breakdown AS u ON u.user_id = a.user_id
    WHERE a.activity_type IN ('send', 'open')
    GROUP BY u.age_bucket
)
SELECT age_bucket,
       ROUND(100.0 * send_time / (send_time + open_time), 2) AS send_perc,
       ROUND(100.0 * open_time / (send_time + open_time), 2) AS open_perc
FROM totals;
