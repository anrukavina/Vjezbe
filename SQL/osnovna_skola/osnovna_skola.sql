# baza podataka za osnovnu školu
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\osnovna_skola\osnovna_skola.sql

drop database if exists osnovna_skola;
create database osnovna_skola;
use osnovna_skola;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11)
);
create table dijete (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    dob     int,
    osoba   int not null
);

create table radionica (
    sifra           int not null primary key auto_increment,
    naziv           varchar(100),
    datum_pocetka   datetime,
    datum_zavrsetka datetime
);

create table uciteljica (
    sifra int not null primary key auto_increment,
    placa decimal(18,2)
);

create table sudjelovanje (
    sifra     int not null primary key auto_increment,
    dijete    int not null,
    radionica int not null
);