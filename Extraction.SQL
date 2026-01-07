CREATE TABLE health_stats (
    year INT,
    country TEXT,
    spending_usd NUMERIC,
    life_expectancy NUMERIC
);

COPY health_stats(year, country, spending_usd, life_expectancy)
FROM 'D:/LifeExp_Analysis_PostgressSQL/healthexp.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM health_stats LIMIT 10;

--Data Size
SELECT COUNT(*) FROM health_stats;

--Countries
SELECT DISTINCT country FROM health_stats;

--Years(Range)
SELECT MIN(year), MAX(year) FROM health_stats;

