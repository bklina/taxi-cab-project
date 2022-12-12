
SELECT hour, COUNT(*) as num_trips
FROM (
  SELECT strftime('%H', pickup_datetime) as hour
  FROM taxi_trips
)
GROUP BY hour
ORDER BY num_trips DESC
