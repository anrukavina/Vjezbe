# baza podataka za postolara
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\postolar.sql
 
drop database if exists postolar;
create database postolar;
use postolar;

create table osoba (
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11)
);

create table postolar (
    osoba       varchar(50),
    br_telefona varchar(50)
);

create table obuca (
    vrsta      varchar(50),
    proizvodac varchar(50),
    velicina   varchar(50),
    boja       varchar(50)
);

create table popravak (
    vrsta    varchar(50),
    cijena   varchar(50),
    trajanje varchar(50)
);

create table segrt (
    osoba varchar(50),
    placa varchar(50)
);