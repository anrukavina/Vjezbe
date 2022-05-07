# baza podataka za udrugu za zastitu zivotinja
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\zastita_zivotinja.sql

drop database if exists zastita_zivotinja;
create database zastita_zivotinja;
use zastita_zivotinja;

create table djelatnik (
    ime     varchar(50),
    prezime varchar(50),
    placa   varchar(50),
    oib     char(11)
);

create table sticenik (
    vrsta   varchar(50),
    pasmina varchar(50),
    boja    varchar(50),
    dob     varchar(50),
    ime     varchar(50)
);

create table prostor (
    tip     varchar(50),
    duljina varchar(50),
    sirina  varchar(50),
    visina  varchar(50)
);

