-- Step 1: Create cleaned COVID-19 dataset
CREATE TABLE covid19_cleaned AS
SELECT 
    location,
    date,
    total_cases,
    new_cases,
    total_deaths,
    new_deaths,
    total_vaccinations,
    new_vaccinations,
    population
FROM covid19_raw
WHERE continent IS NOT NULL
  AND total_cases IS NOT NULL
ORDER BY location, date;
