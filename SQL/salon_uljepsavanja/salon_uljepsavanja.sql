# baza podataka za salon za uljepsavanje
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\salon_uljepsavanja.sql

drop database if exists salon_uljepsavanja;
create database salon_uljepsavanja default charset utf8mb4;
use salon_uljepsavanja;

create table osoba (
    sifra       int not null primary key auto_increment,
    ime         varchar(50) not null,
    prezime     varchar(50) not null,
    email       varchar(100),
    br_telefona varchar(50),
    oib         char(11)
);

create table djelatnica (
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban  varchar(50)
);

create table korisnik (
    sifra int not null primary key auto_increment,
    osoba int not null 
);

create table usluga (
    sifra         int not null primary key auto_increment,
    naziv         varchar(20),
    cijena        decimal(18,2),
    kolicina      int,
    datum_posjeta datetime
);

create table narudzba (
    sifra          int not null primary key auto_increment,
    djelatnica     int not null,
    korisnik       int not null,
    usluga         int not null,
    datum_narudzbe datetime
);

# definiranje vanjskih ključeva

alter table djelatnica add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);

alter table narudzba add foreign key (djelatnica) references djelatnica(sifra);
alter table narudzba add foreign key (korisnik) references korisnik(sifra);
alter table narudzba add foreign key (usluga) references usluga(sifra);