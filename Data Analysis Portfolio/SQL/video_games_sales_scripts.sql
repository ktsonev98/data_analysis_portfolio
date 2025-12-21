CREATE DATABASE portfolio_projects;

SELECT DATABASE();

use portfolio_projects;

SELECT * FROM video_games_sales_as_at_22_dec_2016;

 -- 1. Top 10 best-selling games of all time -- 

SELECT
    Name,
    Platform,
    Year_of_Release,
    Global_Sales
FROM video_games_sales_as_at_22_dec_2016
ORDER BY Global_Sales DESC
LIMIT 10;

-- 2. Total global sales by year --
SELECT
    Year_of_Release,
    SUM(Global_Sales) AS Total_Global_Sales
FROM video_games_sales_as_at_22_dec_2016
WHERE Year_of_Release IS NOT NULL
GROUP BY Year_of_Release
ORDER BY Year_of_Release;

-- 3. Best-selling platforms --
SELECT
    Platform,
    SUM(Global_Sales) AS Total_Global_Sales
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Platform
ORDER BY Total_Global_Sales DESC;

-- 4. Average sales per game by platform --
SELECT
    Platform,
    ROUND(AVG(Global_Sales), 2) AS Avg_Global_Sales
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Platform
ORDER BY Avg_Global_Sales DESC;

-- 5. Regional Market Preferences --
SELECT
    SUM(NA_Sales) AS NA_Total,
    SUM(EU_Sales) AS EU_Total,
    SUM(JP_Sales) AS JP_Total,
    SUM(Other_Sales) AS Other_Total
FROM video_games_sales_as_at_22_dec_2016;


-- 6. Top genres per region --
-- NA --
SELECT
    Genre,
    SUM(NA_Sales) AS NA_Sales
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Genre
ORDER BY NA_Sales DESC;

-- Japan --
SELECT
    Genre,
    SUM(JP_Sales) AS JP_Sales
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Genre
ORDER BY JP_Sales DESC;

-- 7. Global sales by genre --
SELECT
    Genre,
    SUM(Global_Sales) AS Total_Global_Sales
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Genre
ORDER BY Total_Global_Sales DESC;

-- 8. Average sales per game by genre --
SELECT
    Genre,
    ROUND(AVG(Global_Sales), 2) AS Avg_Global_Sales,
    COUNT(*) AS Number_of_Games
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Genre
ORDER BY Avg_Global_Sales DESC;

-- 9. Publisher Analysis -- 
SELECT
    Publisher,
    SUM(Global_Sales) AS Total_Global_Sales
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Publisher
ORDER BY Total_Global_Sales DESC
LIMIT 10;

-- 10. Publisher efficiency (average sales per title) -- 
SELECT
    Publisher,
    ROUND(AVG(Global_Sales), 2) AS Avg_Global_Sales,
    COUNT(*) AS Games_Released
FROM video_games_sales_as_at_22_dec_2016
GROUP BY Publisher
HAVING COUNT(*) >= 10
ORDER BY Avg_Global_Sales DESC;

-- 11. Do critic scores correlate with sales? --
SELECT
    Critic_Score,
    ROUND(AVG(Global_Sales), 2) AS Avg_Global_Sales
FROM video_games_sales_as_at_22_dec_2016
WHERE Critic_Score IS NOT NULL
GROUP BY Critic_Score
ORDER BY Critic_Score;

-- 12. Critics vs players disagreement --
SELECT
    Name,
    Platform,
    Critic_Score,
    User_Score,
    Global_Sales
FROM video_games_sales_as_at_22_dec_2016
WHERE Critic_Score IS NOT NULL
AND User_Score IS NOT NULL
AND ABS(Critic_Score - (User_Score * 10)) >= 30
ORDER BY Global_Sales DESC;

-- 13. High-rated but low-selling games --
SELECT
    Name,
    Platform,
    Genre,
    Global_Sales,
    Critic_Score,
    User_Score
FROM video_games_sales_as_at_22_dec_2016
WHERE Global_Sales < 1
AND Critic_Score >= 80
ORDER BY Critic_Score DESC;

-- 14. Missing data audit --
SELECT
    COUNT(*) AS Total_Rows,
    SUM(Critic_Score IS NULL) AS Missing_Critic_Score,
    SUM(User_Score IS NULL) AS Missing_User_Score,
    SUM(Year_of_Release IS NULL) AS Missing_Year
FROM video_games_sales_as_at_22_dec_2016;
video_games_sales_as_at_22_dec_2016
