# baza podataka za muzej
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba (
    naziv       varchar(50),
    oblik       varchar(50),
    trajanje    varchar(50),
    organizator varchar(50)
);

create table djelo (
    naziv varchar(50),
    vrsta varchar(50),
    autor varchar(50)
);

create table kustos (
    ime     varchar(50),
    prezime varchar(50),
    placa   varchar(50),
    titula  varchar(50)
);

create table sponzor (
    ime            varchar(50),
    prezime        varchar(50),
    iznos_donacije varchar(50),
    tvrtka         varchar (50)
);

