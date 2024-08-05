CREATE DATABASE  IF NOT EXISTS `lolturnier`;
USE `lolturnier`;

-- drop all tables 
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS turniere;
DROP TABLE IF EXISTS user_team;
DROP TABLE IF EXISTS user_turnier;

-- Table structure for table `users`
CREATE TABLE users (
  id int PRIMARY KEY NOT NULL DEFAULT '0',
  sum_name varchar(100) NOT NULL DEFAULT '',
  tag_line varchar(100) NOT NULL DEFAULT '',
  token varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES (1,'Sir Panger', 'EUW', 'wGmyHpI9QTnE'), (2,'Lanzus73', 'EUW', 'SSSSDDDDFFFF');

-- Table structure for table `users`
CREATE TABLE teams (
  id int PRIMARY KEY NOT NULL DEFAULT '0',
  turnier_id int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO teams VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(7,2),(8,2),(9,2);

CREATE TABLE turniere (
  id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  team_size int NOT NULL DEFAULT 8,
  turnier_owner int NOT NULL,
  start_date varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
  
INSERT INTO turniere (id, name, team_size, turnier_owner, start_date) VALUES (1, 'Testturnier', 4, 3, '04.08.2024/20:15'), (2, 'leeresTurnier', 8, 1, '04.08.2024/18:15');


CREATE TABLE user_team (
  user_id int,
  team_id int,
  role varchar(7),
  PRIMARY KEY (user_id, team_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO user_team VALUES (1,1,'jgl'),(2,2,'top');

CREATE TABLE user_turnier (
  user_id int,
  turnier_id int,
  PRIMARY KEY (user_id, turnier_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO user_turnier VALUES (1,1),(2,1)



