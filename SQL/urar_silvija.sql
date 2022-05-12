# baza podataka za urar silvija
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8< C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\urar_silvija.sql

drop database if exists urar_silvija;
create database urar_silvija default charset utf8mb4;
use urar_silvija;

create table osoba (
    sifra   int not null primary key auto_increment;
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table urar (
    sifra int not null primary key auto_increment,
    osoba int not null
);

create table korisnik (
    sifra int not null primary key auto_increment,
    osoba int not null,
    sat   int not null
);

create table segrt (
    sifra int not null primary key auto_increment,
    placa decimal(18,2),
    osoba int not null
);

create table sat (
    sifra      int not null primary key auto_increment,
    vrsta      varchar(50),
    proizvodac varchar(50),
    model      varchar(50),
    boja       varchar(50)
);

