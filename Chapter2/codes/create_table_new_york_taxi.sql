CREATE TABLE hms.data_db.new_york_taxi 
(
    tpep_pickup_datetime timestamp,
    tpep_dropoff_datetime timestamp,
    passenger_count bigint,
    trip_distance decimal(10,2),
    PULocationID bigint,
    DOLocationID bigint,
    fare_amount float)
    partitioned by (days(tpep_pickup_datetime)
)
TBLPROPERTIES 
(
'format' = 'parquet',
'format-version' = '2',
'write.parquet.compression-codec' = 'zstd'
);