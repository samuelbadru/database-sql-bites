-- 2) Using psql to run sql queries
-- Load the seed file onto the database
$ createdb music_library
$ psql -h 127.0.0.1 music_library < music_database.sql


-- 3) Querying data
-- Exercise 1 - Run a SELECT query to list values for the column release_year from the albums table.
SELECT release_year
  FROM albums;

-- Exercise 2 - Run a filtered SELECT query to list only the release_year of the album with title 'Bossanova'.
SELECT release_year
  FROM albums
  WHERE title = 'Bossanova';

-- Challenge - Find the titles of the albums released by 'Pixies' and released between 1980 and 1990 (inclusive).
SELECT title
  FROM albums
  WHERE artist_id = 1
  AND release_year BETWEEN 1980 AND 1990;

-- or
SELECT title
  FROM albums
  WHERE artist_id = 1
  AND 1980 <= release_year AND release_year <= 1990;


-- 4) Updating and deleting data
-- Exercise - Update the release_year of the album with ID 3 to the value 1972
UPDATE albums
  SET release_year = 1972
  WHERE id = 3;

-- Challenge 1  
-- Update the title and release_year of the album with ID 1 (in a single query).
UPDATE albums
  SET title = 'Beneath the Eyrie', release_year = 2019
  WHERE id = 1;

-- Challenge 2
-- Delete the album with ID 12. 
DELETE FROM albums WHERE id = 12;


-- 5) Creating new data
-- Exercise 1 
-- INSERT a new record in albums with title 'Mezzanine', and release year 1998.
INSERT INTO albums
  (title, release_year)
  VALUES('Mezzanine', 1998);

-- Exercise 2
-- Use an UPDATE query to update the artist_id of that new album with Massive Attack.
UPDATE albums
  SET artist_id = 5
  WHERE id = 13;

-- Challenge
-- Insert a new artist of your choice, and a new album related to that artist.
INSERT INTO artists
  (name, genre)
  VALUES('J.Cole', 'Rap');

INSERT INTO albums
  (title, release_year, artist_id)
  VALUES('2014 Forest Hills Drive', 2014, 6);