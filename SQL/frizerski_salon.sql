# baza podataka za frizerski salon
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\frizerski_salon.sql

drop database if exists frizerski_salon;
create database frizerski_salon;
use frizerski_salon;

create table osoba (
    sifra       int not null primary key auto_increment,
    ime         varchar(50) not null,
    prezime     varchar(50) not null,
    br_telefona varchar(50),
    email       varchar(100),
    oib         char(11)
);

create table djelatnica (
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban  varchar(50)
);

create table korisnik (
    sifra       int not null primary key auto_increment,
    osoba       int not null,
    br_narudzbe varchar(10)
);

create table usluga (
    sifra    int not null primary key auto_increment,
    naziv    varchar(20) not null,
    cijena   decimal (18,2),
    kolicina int
);

