# baza podataka za taksi sluzbu   
# nareda za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\taksi_sluzba.sql

drop database if exists taksi_sluzba;
create database taksi_sluzba;
use taksi_sluzba;

create table osoba (
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

create table vozac (
    osoba varchar(50),
    placa varchar(50),
    id_zaposlenika varchar(50)
);

create table putnik (
    osoba varchar(50),
    br_telefona varchar(50)
);

create table vozilo (
    proizvodac varchar(50),
    model varchar(50),
    tip varchar(50),
    boja varchar(50)
);

create table voznja (
    trajanje varchar(50),
    cijena varchar(50),
    datum varchar(50)
);