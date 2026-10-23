-- Marketing Touch Streak
WITH weekly AS (
    SELECT contact_id,
           DATE_TRUNC('week', event_date)::date AS event_week,
           BOOL_OR(event_type = 'trial_request') AS has_trial_request
    FROM marketing_touches
    GROUP BY contact_id, DATE_TRUNC('week', event_date)::date
), numbered AS (
    SELECT *,
           event_week - (ROW_NUMBER() OVER (
               PARTITION BY contact_id ORDER BY event_week
           )::int * INTERVAL '1 week') AS grp
    FROM weekly
), qualifying AS (
    SELECT contact_id, grp
    FROM numbered
    GROUP BY contact_id, grp
    HAVING COUNT(*) >= 3
)
SELECT DISTINCT c.email
FROM qualifying q
JOIN crm_contacts c ON c.contact_id = q.contact_id
WHERE EXISTS (
    SELECT 1
    FROM marketing_touches m
    WHERE m.contact_id = q.contact_id
      AND m.event_type = 'trial_request'
);
