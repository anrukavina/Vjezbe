# baza podataka za postolara
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\postolar.sql
 
drop database if exists postolar;
create database postolar;
use postolar;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table postolar (
    sifra       int not null primary key auto_increment,
    osoba       int not null,
    br_telefona varchar(50)
);

create table segrt (
    sifra int not null primary key auto_increment,
    osoba int not null,
    placa decimal(18,2)
);

create table korisnik (
    sifra int not null primary key auto_increment,
    osoba int not null
);

create table obuca (
    sifra      int not null primary key auto_increment,
    vrsta      varchar(50),
    proizvodac varchar(50),
    velicina   decimal(18,2),
    boja       varchar(20)
);

create table popravak (
    sifra             int not null primary key auto_increment,
    vrsta             varchar(50),
    cijena            decimal(18,2),
    datum_ostavljanja datetime,
    datum_preuzimanja datetime 
);

