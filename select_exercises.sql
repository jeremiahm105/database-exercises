USE codeup_test_db;

SELECT * FROM albums WHERE artist_name ="pink floyd";

SELECT release_date FROM albums WHERE name='Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT * FROM albums WHERE release_date BETWEEN 1989 AND 2000;

SELECT * FROM albums WHERE sales < 20;

SELECT * FROM albums WHERE genre= "rock";