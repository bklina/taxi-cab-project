
CREATE TABLE IF NOT EXISTS hourly_weather (
   id INTEGER PRIMARY KEY,
   date DATE,
   hourly_precipitation FLOAT,
   hourly_wind_speed FLOAT
);


CREATE TABLE IF NOT EXISTS daily_weather (
   id INTEGER PRIMARY KEY,
   date DATE,
   daily_precipitation FLOAT,
   daily_wind_speed FLOAT
);

CREATE TABLE IF NOT EXISTS taxi_trips (
   id INTEGER PRIMARY KEY,
   fare_amount FLOAT,
   pickup_datetime DATE,
   dropoff_datatime DATE,
   pickup_longitude FLOAT,
   pickup_latitude FLOAT,
   dropoff_longitude FLOAT,
   dropoff_latitude FLOAT,
   passenger_count INTEGER,
   Tip_Amout FLOAT,
   distance FLOAT
);


CREATE TABLE IF NOT EXISTS uber_trips (
   id INTEGER PRIMARY KEY,
   fare_amount FLOAT,
   pickup_datetime DATE,
   pickup_longitude FLOAT,
   pickup_latitude FLOAT,
   dropoff_longitude FLOAT,
   dropoff_latitude FLOAT,
   passenger_count INTEGER,
   distance FLOAT
);
