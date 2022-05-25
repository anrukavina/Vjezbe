# baza podataka za kulturno umjetničko društvo
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\kud\kud.sql

drop database if exists kud;
create database kud default charset utf8mb4;
use kud;

create table clan (
    sifra   int not null primary key auto_increment
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    starost int    
);

create table mjesto (
    sifra int not null primary key auto_increment,
    naziv          varchar(50) not null,
    postanski_broj varchar(10) not null,
    drzava         varchar(50) not null
);

create table nastup (
    sifra       int not null primary key auto_increment,
    naziv       varchar(50),
    broj_kudova int,
    mjesto int not null
);

create table nastupanje (
    sifra  int not null primary key auto_increment,
    nastup int not null,
    clan   int not null
);

# definiranje vanjskih ključeva

alter table nastup add foreign key (mjesto) references mjesto(sifra);
alter table nastupanje add foreign key (nastup) references nastup(sifra);
alter table nastupanje add foreign key (clan) references clan(sifra);