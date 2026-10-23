-- Histogram of Users and Purchases
WITH latest AS (
    SELECT *,
           MAX(transaction_date) OVER (PARTITION BY user_id) AS latest_date
    FROM user_transactions
)
SELECT latest_date AS transaction_date,
       user_id,
       COUNT(*) AS purchase_count
FROM latest
WHERE transaction_date = latest_date
GROUP BY latest_date, user_id
ORDER BY latest_date, user_id;
