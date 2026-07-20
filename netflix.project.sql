SELECT
MIN(Age) AS Youngest,
MAX(Age) AS Oldest
FROM netflix_users;
SELECT Subscription_Type,
COUNT(*) AS Total_Users
FROM netflix_users
GROUP BY Subscription_Type;
show columns from netflix_users;
select count(*)
FROM netflix_users
WHERE Country = 'India';
SELECT count(*)
FROM netflix_users
WHERE Subscription_Type = 'Premium';
SELECT count(*)
FROM netflix_users
WHERE Age > 30;
SELECT *
FROM netflix_users
WHERE Watch_Time_Hours > 50;
SELECT *
FROM netflix_users
ORDER BY Age desc;
select *
from netflix_users
order by Watch_Time_Hours
limit 5;
SELECT MAX(Watch_Time_Hours) AS Highest_Watch_Time
FROM netflix_users;
SELECT SUM(Watch_Time_Hours) AS Total_Watch_Time
FROM netflix_users;
select country,
count(*) as total_users
from netflix_users
group by Country;
select Subscription_Type,
count(*) as total_users
from netflix_users
group by Subscription_Type;
SELECT Country,
       AVG(Age) AS Avg_Age
FROM netflix_users
GROUP BY Country;
SELECT Favorite_Genre,
       COUNT(*) AS Total_Users
FROM netflix_users
GROUP BY Favorite_Genre;
SELECT Country,
       COUNT(*) AS Total_Users
FROM netflix_users
GROUP BY Country
HAVING COUNT(*) > 5;
select Country,
count(*) as Total_users
from netflix_users
group by Country;
select Subscription_Type,
avg(Age) as Avg_Age
from netflix_users
group by Subscription_Type;
SELECT Favorite_Genre,
       COUNT(*) AS Total_Users
FROM netflix_users
GROUP BY Favorite_Genre;
SELECT DISTINCT Country
FROM netflix_users;
SELECT DISTINCT Favorite_Genre
FROM netflix_users;
select *
from netflix_users
where Name like 'A%';
SELECT *
FROM netflix_users
WHERE Name LIKE '%n';
SELECT *
FROM netflix_users
WHERE Name LIKE 'D%n';
SELECT *
FROM netflix_users
WHERE Name LIKE '%an%';
SELECT *
FROM netflix_users
WHERE Age between 25 and 35;
SELECT *
FROM netflix_users
WHERE Country in ('India');
SELECT *
FROM netflix_users
WHERE Country NOT IN ('India', 'USA');
SELECT Name,
       Watch_Time_Hours,
       CASE
           WHEN Watch_Time_Hours >= 70 THEN 'Heavy User'
           WHEN Watch_Time_Hours >= 40 THEN 'Regular User'
           ELSE 'Light User'
       END AS User_Type
FROM netflix_users;
SELECT Country,
       AVG(Watch_Time_Hours) AS Avg_Watch_Time
FROM netflix_users
GROUP BY Country
ORDER BY Avg_Watch_Time DESC
LIMIT 3;
SELECT Favorite_Genre,
       COUNT(*) AS Total_Users
FROM netflix_users
GROUP BY Favorite_Genre
order by total_users desc
limit 1;