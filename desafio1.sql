DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
price DECIMAL(3,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.`user`(
user_id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100),
age INT NOT NULL,
plan_id INT NOT NULL,
plan_date VARCHAR(100) NOT NULL,
FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan(plan_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
age INT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.artist(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.song(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song VARCHAR(100),
album_id INT NOT NULL,
artist_id INT NOT NULL,
duration INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id),
FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.`history`(
histoty_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
song_id INT NOT NULL,
`date` VARCHAR(100),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.`user`(user_id),
FOREIGN KEY (song_id) REFERENCES SpotifyClone.song(song_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.user_artist(
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES SpotifyClone.`user`(user_id),
FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id)
) ENGINE=InnoDB;