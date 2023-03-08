-- 197. Rising Temperature
-- Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
-- select w.id
-- from Weather w
-- where w.id > 1
--     and temperature > (
--         select temperature
--         from weather
--         where id = w.id - 1
--     );
SELECT weather.id as 'id'
FROM weather
    JOIN weather w ON DATEDIFF(weather.recordDate, w.recordDate) = 1
    AND weather.Temperature > w.Temperature;
-- DATEDIFF