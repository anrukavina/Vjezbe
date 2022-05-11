# baza podataka za djecji vrtic
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\djecji_vrtic.sql

drop database if exists djecji_vrtic;
create database djecji_vrtic;
use djecji_vrtic;

create table odgojna_skupina (
    sifra         int not null primary key auto_increment,
    naziv         varchar(50),
    dobna_granica int,
    broj_djece    int,
    vrsta         varchar(50)
);

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char (11)
);

create table dijete (
    sifra             int not null primary key auto_increment,
    osoba             int not null,
    dob               int,
    ime_roditelja     varchar(50) not null,
    kontakt_roditelja varchar(50)
);

create table odgajateljica (
    sifra          int not null primary key auto_increment,
    osoba          int not null,
    strucna_sprema varchar(50)
);