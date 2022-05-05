# baza podataka za frizerski salon
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\frizerski_salon.sql

drop database if exists frizerski_salon;
create database frizerski_salon;
use frizerski_salon;

create table osoba (
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11)
);

create table djelatnica (
    osoba       varchar(50),
    br_telefona varchar(50)
);

create table korisnik (
    osoba varchar(50),
    email varchar(50)
);

create table usluga (
    naziv    varchar(50),
    cijena   varchar(50),
    kolicina varchar(50)
);