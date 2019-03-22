### Schema
DROP DATABASE IF EXISTS burgers_bd;
CREATE DATABASE burgers_bd;
USE burgers_bd;
CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
    burger_name  varchar(200) NOT NULL,
    devoured BOOLEAN DEFAULT false,
    todaydate  TIMESTAMP,
	PRIMARY KEY (id)
);
