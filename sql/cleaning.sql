-- Create cleaned table and handle NULLs / blanks
CREATE TABLE covid19_cleaned AS
SELECT
    location AS country,
    date,
    population,
    CASE WHEN total_cases IS NULL OR total_cases = '' THEN 0 ELSE total_cases END AS total_cases,
    CASE WHEN new_cases IS NULL OR new_cases = '' THEN 0 ELSE new_cases END AS new_cases,
    CASE WHEN total_deaths IS NULL OR total_deaths = '' THEN 0 ELSE total_deaths END AS total_deaths,
    CASE WHEN new_deaths IS NULL OR new_deaths = '' THEN 0 ELSE new_deaths END AS new_deaths,
    CASE WHEN total_vaccinations IS NULL OR total_vaccinations = '' THEN 0 ELSE total_vaccinations END AS total_vaccinations,
    CASE WHEN new_vaccinations IS NULL OR new_vaccinations = '' THEN 0 ELSE new_vaccinations END AS new_vaccinations
FROM covid19_raw
WHERE continent IS NOT NULL
ORDER BY country, date;
