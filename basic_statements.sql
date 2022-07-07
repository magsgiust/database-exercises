-- Use the albums_db database.
USE albums_db;

-- Explore the structure of the albums table.
DESCRIBE albums;

-- a. How many rows are in the albums table?

select count(*) from albums;

-- b. How many unique artist names are in the albums table?

select count(distinct(artist)) from albums;

-- c. What is the primary key for the albums table? id

-- d. What is the oldest release date for any album in the albums table? 

SELECT MIN(release_date) FROM albums;

-- What is the most recent release date?
SELECT MAX(release_date) FROM albums;

-- a. The name of all albums by Pink Floyd
SELECT `name` FROM albums WHERE artist = 'Pink Floyd';

-- b. The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE `name` = "Sgt. Pepper's Lonely Hearts Club Band";

-- c. The genre for the album Nevermind
SELECT genre FROM albums where `name` = 'Nevermind';

-- d. Which albums were released in the 1990s
SELECT `name` FROM albums WHERE release_date >= 1990 AND release_date < 2000;

-- e. Which albums had less than 20 million certified sales
SELECT `name` FROM albums WHERE sales < 20;

-- f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT `name` FROM albums WHERE genre = 'Rock';