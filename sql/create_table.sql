-- Create table for raw OWID dataset (only relevant columns)
DROP TABLE IF EXISTS covid19_raw;

CREATE TABLE covid19_raw (
    iso_code TEXT,
    continent TEXT,
    country TEXT,
    date TEXT,
    population INTEGER,
    total_cases REAL,
    new_cases REAL,
    total_deaths REAL,
    new_deaths REAL,
    total_vaccinations REAL,
    new_vaccinations REAL
);
