--  Using Mysql
--phpmyadmin


create database random1;
use random1;
create table restaurant (
    restid int(11) not null PRIMARY KEY AUTO_INCREMENT,
    restname varchar(100) not null,
    contact int(10) not null,
    area varchar(100) not null,
    city varchar(50) not null,
    tablesleft int ,
    );

create table customer (
    username varchar(50) not null PRIMARY KEY,
    email varchar(100) not null,
    name varchar(50) not null,
    phoneno int(10) not null,
    password varchar(20) not null,
images text
    );
    
create table review (
    reviewid int(20) not null PRIMARY KEY AUTO_INCREMENT,
    reviews varchar(700),
    restid int(11),
    userid varchar(50),
    FOREIGN KEY (restid) REFERENCES restaurant(restid) on DELETE CASCADE,
    FOREIGN KEY (userid) REFERENCES customer(username) on DELETE CASCADE
    );
    
create table table1(
    tid int not null PRIMARY KEY AUTO_INCREMENT,
    rdate date not null,
    rtime timestamp not null,
    restid int(11),
    userid varchar(50),
	tables int,
    FOREIGN KEY (restid) REFERENCES restaurant(restid),
    FOREIGN KEY (userid) REFERENCES customer(username)
    );
