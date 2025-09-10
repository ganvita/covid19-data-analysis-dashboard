-- Step 2: General analysis queries

-- Daily new cases & deaths per country
SELECT 
    country, 
    date, 
    new_cases, 
    new_deaths
FROM covid19_cleaned
ORDER BY country, date;

-- Vaccination progress as % of population
SELECT 
    country,
    date,
    total_vaccinations,
    population,
    ROUND((total_vaccinations * 100.0) / population, 2) AS vaccination_rate
FROM covid19_cleaned
WHERE population > 0
ORDER BY country, date;
