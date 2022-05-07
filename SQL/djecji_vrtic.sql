# baza podataka za djecji vrtic
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\djecji_vrtic.sql

drop database if exists djecji_vrtic;
create database djecji_vrtic;
use djecji_vrtic;

create table odgojna_skupina (
    naziv         varchar(50),
    dobna_granica varchar(50),
    broj_djece    varchar(50),
    vrsta         varchar(50)
);

create table dijete (
    ime               varchar(50),
    prezime           varchar(50),
    ime_roditelja     varchar(50),
    dob               varchar(50),
    kontakt_roditelja varchar(50)
);

create table odgajateljica (
    ime            varchar(50),
    prezime        varchar(50),
    strucna_sprema varchar(50)
);