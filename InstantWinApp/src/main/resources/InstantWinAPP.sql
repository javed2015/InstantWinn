CREATE DATABASE IF NOT EXISTS instant;

USE instant;

DROP TABLE IF EXISTS instant.winappreg;

DROP TABLE IF EXISTS instant.winappcode;

CREATE TABLE IF NOT EXISTS instant.winappreg (
   id int(11) NOT NULL AUTO_INCREMENT,
   first_name varchar(45) DEFAULT NULL,
   last_name varchar(45) DEFAULT NULL,
   email varchar(45) NOT NULL,
   password varchar(45) NOT NULL,
   time_stamp timestamp,
   PRIMARY KEY (email),
   UNIQUE KEY id_UNIQUE (id)
 ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='  ';
 
 CREATE TABLE IF NOT EXISTS instant.winappcode (
   id int(11) NOT NULL,
   code varchar(45) NOT NULL,
   status int NOT NULL,
   UNIQUE KEY id_UNIQUE (id),
   UNIQUE KEY code_UNIQUE (code)
 ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
 
truncate table instant.winappcode;
