-- @materialize: true
SELECT 
       trip.request_datetime as request_datetime,
       trip.trip_miles as trip_miles,
       trip.trip_time as trip_time,
       trip.driver_pay as driver_pay,
       trip.tips as tips,
       pickup.Zone as pickup_zone,
       pickup.Borough as pickup_borough,
       drop.Zone as dropoff_zone,
       drop.Borough as dropoff_borough
FROM {{ ref "nyc_trips" }} trip
JOIN {{ ref "zones" }} pickup
ON trip.PULocationID = pickup.LocationID
JOIN zones drop
ON trip.PULocationID = drop.LocationID