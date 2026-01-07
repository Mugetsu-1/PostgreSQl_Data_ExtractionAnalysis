SELECT country, year, life_expectancy,
       RANK() OVER (PARTITION BY year ORDER BY life_expectancy DESC) AS rank_in_year
FROM health_stats;


WITH yearly_avg AS (
    SELECT year, AVG(life_expectancy) AS avg_life
    FROM health_stats
    GROUP BY year
)
SELECT * FROM yearly_avg ORDER BY year;