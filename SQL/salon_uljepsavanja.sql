# baza podataka za salon za uljepsavanje
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\salon_uljepsavanja.sql

drop database if exists salon_uljepsavanja;
create database salon_uljepsavanja;
use salon_uljepsavanja;

create table osoba (
    ime     varchar(50),
    prezime varchar(50),
    oib     varchar(50)
);

create table djelatnica (
    osoba       varchar(50),
    br_telefona varchar(50)
);

create table korisnik (
    osoba varchar(50),
    spol  varchar(50),
    email varchar(50)
);

create table usluga (
    naziv         varchar(50),
    cijena        varchar(50),
    kolicina      varchar(50),
    datum_posjeta varchar(50)
);
