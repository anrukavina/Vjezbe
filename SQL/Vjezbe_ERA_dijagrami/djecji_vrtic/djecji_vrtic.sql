# baza podataka za djecji vrtic
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\djecji_vrtic.sql

drop database if exists djecji_vrtic;
create database djecji_vrtic default charset utf8mb4;
use djecji_vrtic;

create table odgojna_skupina (
    sifra         int not null primary key auto_increment,
    naziv         varchar(50),
    dobna_granica int,
    broj_djece    int,
    vrsta         varchar(50),
    dijete        int not null,
    odgajateljica int not null
);

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char (11)
);

create table dijete (
    sifra             int not null primary key auto_increment,
    osoba             int not null,
    dob               int,
    ime_roditelja     varchar(50) not null,
    kontakt_roditelja varchar(50)
);

create table odgajateljica (
    sifra          int not null primary key auto_increment,
    osoba          int not null,
    strucna_sprema varchar(50)
);

# definiranje vanjskih ključeva

alter table odgajateljica add foreign key (osoba) references osoba(sifra);
alter table dijete add foreign key (osoba) references osoba(sifra);

alter table odgojna_skupina add foreign key (odgajateljica) references odgajateljica(sifra);
alter table odgojna_skupina add foreign key (dijete) references dijete(sifra);