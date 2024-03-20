CREATE TABLE MyDimDate (
    date_id INT PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    year INT,
    quarter SMALLINT,
    quarter_name VARCHAR(20),
    month SMALLINT,
    month_name VARCHAR(20),
    day SMALLINT,
    weekday SMALLINT,
    weekday_name VARCHAR(20)
)
;

CREATE TABLE DimStation (
    station_id INT PRIMARY KEY NOT NULL,
    city VARCHAR(20) NOT NULL
)
;

CREATE TABLE DimTruck (
    truck_id INT PRIMARY KEY NOT NULL,
    truck_type VARCHAR(20) NOT NULL
)
;

CREATE TABLE FactTrips (
    trip_id INT PRIMARY KEY NOT NULL,
    date_id INT REFERENCES MyDimDate(date_id),
    station_id INT REFERENCES DimStation(station_id),
    truck_id INT REFERENCES DimTruck(truck_id),
    waste_collected FLOAT(2)
)
;