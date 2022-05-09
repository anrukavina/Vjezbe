# baza podataka za urar silvija
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\urar_silvija.sql

drop database if exists urar_silvija;
create database urar_silvija;
use urar_silvija;

create table osoba (
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

create table korisnik (
    osoba varchar(50),
    email varchar(50)
);

create table sat (
    vrsta varchar(50),
    proizvodac varchar(50),
    model varchar(50),
    boja varchar(50)
);

create table segrt (
    osoba varchar(50),
    placa varchar(50)
);