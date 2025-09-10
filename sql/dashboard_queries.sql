-- Step 3: Queries for dashboard charts & pivots

-- Top 10 countries with the highest total cases
SELECT location, MAX(total_cases) AS max_cases
FROM covid19_cleaned
GROUP BY location
ORDER BY max_cases DESC
FETCH FIRST 10 ROWS ONLY;

-- Mortality rate = deaths / cases (latest values per country)
SELECT location,
       MAX(total_deaths) AS total_deaths,
       MAX(total_cases) AS total_cases,
       ROUND((MAX(total_deaths)/MAX(total_cases))*100,2) AS mortality_rate
FROM covid19_cleaned
GROUP BY location
ORDER BY mortality_rate DESC;

-- Global trend of daily new cases
SELECT date, SUM(new_cases) AS global_new_cases
FROM covid19_cleaned
GROUP BY date
ORDER BY date;
