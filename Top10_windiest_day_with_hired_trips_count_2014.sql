 
SELECT strftime('%Y-%m-%d', pickup_datetime), COUNT(*) as num_trips
FROM (
  SELECT pickup_datetime FROM taxi_trips 
  WHERE strftime('%Y', pickup_datetime) = '2014' 
  UNION ALL
  SELECT pickup_datetime FROM uber_trips 
  WHERE strftime('%Y', pickup_datetime) = '2014'
)
WHERE strftime('%Y-%m-%d', pickup_datetime) IN (
  SELECT strftime('%Y-%m-%d', DATE) FROM daily_weather
  WHERE strftime('%Y', DATE) = '2014'
  ORDER BY DailyAverageWindSpeed DESC
)
GROUP BY strftime('%Y-%m-%d', pickup_datetime)
ORDER BY COUNT(*) DESC
LIMIT 10
