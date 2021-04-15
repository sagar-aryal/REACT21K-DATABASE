drop database if exists superherodb;
create database superherodb;
use superherodb;

create table superhero(
    heroID integer not null primary key,
    name varchar(15) not null,
    gear varchar(21) not null,
    costume varchar(14) not null,
    yearOfBirth integer not null
);

-- drop user if exists 'felix'@'localhost';
create user if not exists 'felix'@'localhost' identified by 'secret';
grant all privileges on superherodb.* to 'felix'@'localhost';

insert into superhero values(3, 'SteelFood', 'MemoryEnhancer', 'blue', 1930);
insert into superhero values(7, 'Rustman', 'JumpBoots', 'green', 1990);
insert into superhero values(1, 'SuperMoron', 'Cape', 'brown', 1960);
insert into superhero values(2, 'DataMaster', 'SuperArmour', 'red', 1890);
insert into superhero values(5, 'SuperQL', 'HelmeT', 'orange', 1905);
insert into superhero values(4, 'SuperGenius', 'Glove', 'data-outfit', 2017);
insert into superhero values(6, 'Lightning', 'SearchEngine', 'memoryhelmet', 2000);

 
 