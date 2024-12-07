select * from [dbo].[disney_plus_shows]

---12 Business Problems!

--1. Count the number of Movies vs TV Shows

SELECT 
     type,
	 COUNT(*) AS total_content
FROM [dbo].[disney_plus_shows]
GROUP BY type;

--2.Find the most common rating for Movies and TV Shows.

SELECT
     type,
	 rated,
	 rating_count
FROM
(
SELECT 
     type,
     rated,
	   COUNT(*) as rating_count,
	 RANK() OVER(PARTITION BY type ORDER BY COUNT(*) DESC) as ranking
FROM [dbo].[disney_plus_shows]
GROUP BY type,rated
)AS t1
where ranking =1 ;

--3.Identify the Longest Movie!

SELECT
     *
FROM [dbo].[disney_plus_shows]
WHERE type = 'Movie' AND runtime = (SELECT MAX(runtime) FROM [dbo].[disney_plus_shows]);

--4. Find the content added in the last 5 years

SELECT 
     * 
FROM [dbo].[disney_plus_shows]
WHERE added_at >= DATEFROMPARTS(YEAR(GETDATE())-5,1,1);

--5. Find all the Movies/TV Shows by director 'John' !

SELECT 
    * 
FROM [dbo].[disney_plus_shows] 
WHERE 
    director LIKE 'John %';

--6. Find all content without director!

SELECT
    *
FROM [dbo].[disney_plus_shows] 
WHERE 
    director IS NULL;
	
--7.Find how many Movies actor 'Heath Ledger' appeared in last 30 years!

SELECT title,CAST(released_at AS DATE) AS release_date FROM [dbo].[disney_plus_shows] 
WHERE
	type = 'movie'
AND
	actors Like 'Heath Ledger%'
 AND
	released_at >= DATEFROMPARTS(YEAR(GETDATE())-30,1,1);

--8.Find the average duration of Movies based on rating.

SELECT 
    rated, 
    AVG(CAST(REPLACE(runtime, ' min', '') AS INT)) AS average_duration
FROM 
    disney_plus_shows
WHERE 
    type = 'movie' and runtime NOT LIKE 'N/A'
GROUP BY 
    rated
ORDER BY 
    average_duration DESC;

--9.List all shows added in the last 6 months.

SELECT 
    title, 
    type, 
    added_at
FROM 
    disney_plus_shows
WHERE 
    TRY_CONVERT(DATE, added_at, 107) >= DATEADD(YEAR, -5, GETDATE());

--10.Identify the TV Show with the highest average IMDb rating (requires IMDb rating)!

SELECT top 1 title,  AVG(TRY_CONVERT(FLOAT, imdb_rating)) AS avg_rating
FROM 
	disney_plus_shows
WHERE 
	type = 'series'
GROUP BY 
	title
ORDER BY 
	avg_rating DESC;

--11. Identify the top 5 directors with the most content.

SELECT top 5 director, COUNT(*) AS total_content
FROM 
	disney_plus_shows
WHERE
	director not like 'N/A'
GROUP BY 
	director
ORDER BY
	total_content DESC

--12. Find the number of content items added each year.

SELECT YEAR(added_at) AS year, COUNT(*) AS total_content_added
FROM 
	disney_plus_shows
WHERE 
	added_at IS NOT NULL
GROUP BY 
	YEAR(added_at)
ORDER BY 
		YEAR(added_at);

