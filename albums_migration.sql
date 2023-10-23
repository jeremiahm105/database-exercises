USE codeup_test_db;
drop table if exists albums;
CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(50),
  name  VARCHAR(100) NOT NULL,
  release_date INT(4),
  sales DECIMAL(3,1),
  genre CHAR(50),
  PRIMARY KEY (id)
);
