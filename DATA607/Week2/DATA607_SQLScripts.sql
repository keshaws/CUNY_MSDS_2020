# Create Database

drop database if exists DATA607_MOVIEDB;

CREATE DATABASE DATA607_MOVIEDB ;

drop user if exists DATA607User;

# Create User

create user 'DATA607User' identified by 'admin';

GRANT all on DATA607_MOVIEDB.* To 'DATA607User';

# Create movie table

DROP TABLE IF exists `DATA607_MOVIEDB`.`movie`;
 CREATE TABLE `DATA607_MOVIEDB`.`movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

# Insert values movie table

INSERT INTO `DATA607_MOVIEDB`.`movie`
(`movie_name`)
VALUES
('JUMANJI: THE NEXT LEVEL'),
('Spies in Disguise'),
('Dolittle'),
('Fronzen 2'),
('Star Wars: The Rise of Skywalker'),
('1917');

# Create reviewer table
DROP TABLE  IF exists `DATA607_MOVIEDB`.`reviewer`;

CREATE TABLE `DATA607_MOVIEDB`.`reviewer` (
  `reviewer_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewer_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reviewer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

# insert values into reviewer table

INSERT INTO `DATA607_MOVIEDB`.`reviewer`
 (`reviewer_name`,
 `gender`)
 VALUES
 ('Tom','M'),
 ('Alice','F'),
 ('Nathan','M'),
 ('Dan','M'),
 ('Lucy','F')	
 ;

# Create rating table

DROP TABLE  IF exists `DATA607_MOVIEDB`.`rating`;

CREATE TABLE `DATA607_MOVIEDB`.`rating` (
  `reviewer_id` int(11) DEFAULT NULL ,
  `movie_id` int(11) DEFAULT NULL,
  `rating` float(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Insert values into rating table

INSERT INTO `DATA607_MOVIEDB`.`rating`
(`reviewer_id`,
`movie_id`,
`rating`)
VALUES
(1,1,6.5),
(1,2,6),
(1,3,7),
(1,4,8),
(1,5,9),
(1,6,7.5),

(2,1,7),
(2,2,6.5),
(2,3,7),
(2,4,8.5),
(2,5,7),
(2,6,9),


(3,1,7.7),
(3,2,6.8),
(3,3,7),
(3,4,7),
(3,5,8),
(3,6,7),

(4,1,7.5),
(4,2,6.5),
(4,3,7.5),
(4,4,8),
(4,5,7),
(4,6,NULL),

(5,1,7),
(5,2,6.5),
(5,3,7.5),
(5,4,8),
(5,5,5.5),
(5,6,NULL);





