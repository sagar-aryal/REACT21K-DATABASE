drop database if exists computerdb;
create database computerdb;
use computerdb;

create table computer (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(24) NOT NULL,
    type VARCHAR(19) NOT NULL,
    amount INTEGER NOT NULL,
    processor VARCHAR(13) NOT NULL
);

drop user if exists 'michael'@'localhost';
create user 'michael'@'localhost' identified by 'iXGPFptO';

grant all privileges on computerdb.* to 'michael'@'localhost';


