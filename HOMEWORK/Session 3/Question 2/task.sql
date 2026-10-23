-- Patient Support Analysis (Part 3)
WITH calls AS (
    SELECT policy_holder_id,
           call_date,
           LAG(call_date) OVER (
               PARTITION BY policy_holder_id ORDER BY call_date
           ) AS previous_call
    FROM callers
)
SELECT COUNT(DISTINCT policy_holder_id) AS policy_holder_count
FROM calls
WHERE call_date - previous_call <= INTERVAL '7 days';
