# baza podataka za samostan
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table osoba (
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11)
);

create table svecenik (
    osoba varchar(50),
    posao varchar(50)
);

create table posao (
    naziv    varchar(50),
    vrsta    varchar(50),
    trajanje varchar(50)
);

create table nadredeni_svecenik (
    osoba  varchar(50),
    posao  varchar(50),
    nadzor varchar(50)
);
