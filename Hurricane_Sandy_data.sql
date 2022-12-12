 
SELECT strftime('%Y-%m-%d %H', pickup_datetime) as hourtime, COUNT(*) as num_trips
FROM (
  SELECT pickup_datetime FROM taxi_trips 
  WHERE taxi_trips.pickup_datetime BETWEEN '2012-10-22' AND '2012-11-05' 
  UNION ALL
  SELECT pickup_datetime FROM uber_trips 
  WHERE uber_trips.pickup_datetime BETWEEN '2012-10-22' AND '2012-11-05'
)
GROUP BY hourtime
