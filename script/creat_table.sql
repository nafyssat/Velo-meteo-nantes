
-- Table: dim_station
DROP TABLE IF EXISTS dim_station;
CREATE TABLE dim_station (
    id_station SERIAL PRIMARY KEY,
    code_boucle INT,
    nom_station TEXT
);

-- Table: dim_date
DROP TABLE IF EXISTS dim_date;
CREATE TABLE dim_date (
    id_date SERIAL PRIMARY KEY,
    date DATE,
    vacances TEXT,
    mois INT,
    jour INT,
    name_day INT
);

-- Table: dim_meteo
DROP TABLE IF EXISTS dim_meteo;
CREATE TABLE dim_meteo (
    id_meteo SERIAL PRIMARY KEY,
    date DATE,
    temperature FLOAT,
    precipitation FLOAT,
    wind_speed FLOAT,
    cloud_cover INT,
    wind_gusts FLOAT,
    apparent_temperature FLOAT
);

-- Table: fait_comptage_meteo
DROP TABLE IF EXISTS fait_comptage_meteo;
CREATE TABLE fait_comptage_meteo (
    id_fait SERIAL PRIMARY KEY,
    id_station INT REFERENCES dim_station(id_station),
    id_date INT REFERENCES dim_date(id_date),
    id_meteo INT REFERENCES dim_meteo(id_meteo),
    total INT
);