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

insert into computerdb.computer values(1, 'Intel', 'desktop', 6, 'Corei7');
insert into computerdb.computer values(2, 'Macbook Pro', 'laptop', 1, 'Corei10');


drop user if exists 'michael'@'localhost';
create user 'michael'@'localhost' identified by 'iXGPFptO';

grant all privileges on computerdb.* to 'michael'@'localhost';


