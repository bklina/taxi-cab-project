
SELECT distance FROM(
SELECT distance FROM taxi_trips
UNION
SELECT distance FROM uber_trips
)
LIMIT 1
OFFSET(
SELECT COUNT(*) FROM (
SELECT distance FROM taxi_trips
UNION
SELECT distance FROM uber_trips
)
) * 95/100 - 1
