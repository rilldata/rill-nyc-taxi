-- @materialize: true
SELECT 
       trip.request_datetime,
       trip.trip_miles,
       trip.trip_time,
       trip.driver_pay,
       trip.tips,
       pickup.Zone as pickup_zone,
       pickup.Borough as pickup_borough,
       dropoff.Zone as dropoff_zone,
       dropoff.Borough as dropoff_borough,
FROM nyc_trips trip
JOIN zones pickup ON (trip.PULocationID = pickup.LocationID)
JOIN zones dropoff ON (trip.DOLocationID = dropoff.LocationID)