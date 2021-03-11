SELECT movies.title, links.movieid, links.imdbid, links.tmdbid, AVG(ratings.rating) AS "Average Rating"
FROM movies
INNER JOIN links
ON links.tmdbid = movies.id
INNER JOIN ratings
ON ratings.movieid = links.movieid 
GROUP BY movies.title, links.movieid
ORDER BY "Average Rating" DESC;