-- Step 3: Queries for dashboard charts & pivots

-- Top 10 countries with the highest total cases
SELECT 
    country,
    SUM(total_cases) AS max_cases
FROM covid19_cleaned
GROUP BY country
ORDER BY max_cases DESC
LIMIT 10;

-- Mortality rate = deaths / cases (latest values per country)
SELECT 
    country,
    SUM(total_deaths) AS total_deaths,
    SUM(total_cases) AS total_cases,
    CASE 
        WHEN SUM(total_cases) = 0 THEN 0
        ELSE ROUND((SUM(total_deaths) * 100.0) / SUM(total_cases), 2)
    END AS mortality_rate
FROM covid19_cleaned
GROUP BY country
ORDER BY mortality_rate DESC;

-- Global trend of daily new cases
SELECT 
    date,
    SUM(new_cases) AS global_new_cases
FROM covid19_cleaned
GROUP BY date
ORDER BY date;
