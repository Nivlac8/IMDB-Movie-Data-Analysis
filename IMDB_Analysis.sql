-- PROJECT: IMDB Movie Analysis
-- GOAL: Analyze cinema trends to find high-performing directors, eras, and actors.

-- 1. Director Analysis: Who are the most prolific directors?
-- Skill: Aggregations (COUNT) and Grouping
SELECT 
    people.name, 
    COUNT(directors.movie_id) as total_movies
FROM people
JOIN directors 
    ON people.id = directors.person_id
GROUP BY people.id
HAVING total_movies >= 10
ORDER BY total_movies DESC
LIMIT 10;

-- 2. "Golden Era" Analysis: Which years had the highest average ratings?
-- Skill: Logic (HAVING vs WHERE) and Math
SELECT 
    movies.year, 
    AVG(ratings.rating) as avg_score, 
    COUNT(movies.id) as total_movies
FROM movies
JOIN ratings ON movies.id = ratings.movie_id
GROUP BY movies.year
HAVING avg_score > 6.0 AND total_movies > 10
ORDER BY avg_score DESC
LIMIT 10;

-- 3. "Star Power" Analysis: Which actors have the highest "Batting Average"?
-- Skill: Complex 4-Table Join
SELECT 
    people.name,
    AVG(ratings.rating) as batting_average,
    COUNT(movies.id) as movies_made
FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
JOIN ratings ON movies.id = ratings.movie_id
GROUP BY people.id
HAVING movies_made > 20
ORDER BY batting_average DESC
LIMIT 10;