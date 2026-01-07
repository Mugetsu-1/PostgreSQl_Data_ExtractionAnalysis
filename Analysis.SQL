-- Top countries by life expectancy in a given year
SELECT country, life_expectancy
FROM health_stats
WHERE year = 2020
ORDER BY life_expectancy DESC
LIMIT 10;

--Average life expectancy vs. spending per year
SELECT year,
       AVG(life_expectancy) AS avg_life,
       AVG(spending_usd) AS avg_spending
FROM health_stats
GROUP BY year
ORDER BY year;

-- Countries with biggest improvement over time
SELECT country,
       MAX(life_expectancy) - MIN(life_expectancy) AS improvement
FROM health_stats
GROUP BY country
ORDER BY improvement DESC
LIMIT 10;

-- Spending efficiency
SELECT country,
       AVG(life_expectancy / NULLIF(spending_usd, 0)) AS efficiency
FROM health_stats
GROUP BY country
ORDER BY efficiency DESC
LIMIT 10;
