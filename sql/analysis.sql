-- Step 2: General analysis queries

-- Daily new cases & deaths per country
SELECT location, date, new_cases, new_deaths
FROM covid19_cleaned
ORDER BY location, date;

-- Vaccination progress as % of population
SELECT location, date, total_vaccinations, population,
       ROUND((total_vaccinations/population)*100,2) AS vaccination_rate
FROM covid19_cleaned
WHERE total_vaccinations IS NOT NULL
ORDER BY location, date;
