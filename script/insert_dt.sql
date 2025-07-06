
-- dim_station
TRUNCATE TABLE dim_station RESTART IDENTITY;
COPY dim_station(code_boucle, nom_station)
FROM '../data/station.csv'
DELIMITER ','
CSV HEADER;

-- dim_date
TRUNCATE TABLE dim_date RESTART IDENTITY;
COPY dim_date(date, vacances, mois, jour, name_day)
FROM '../data/temps.csv'
DELIMITER ','
CSV HEADER;

-- dim_meteo
TRUNCATE TABLE dim_meteo RESTART IDENTITY;
COPY dim_meteo(date, temperature, precipitation, wind_speed, cloud_cover, wind_gusts, apparent_temperature)
FROM '../data/meteo.csv'
DELIMITER ','
CSV HEADER;


-- fait_comptage_meteo
TRUNCATE TABLE fait_comptage_meteo RESTART IDENTITY;
COPY fait_comptage_meteo(id_fait, id_station, id_date, id_meteo, total)
FROM '../data/fait_comptage_meteo.csv'
DELIMITER ','
CSV HEADER;
