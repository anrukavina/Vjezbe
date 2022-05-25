# baza podataka za vodoinstalatera
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\vodoinstalater\vodoinstalater.sql

drop database if exists vodoinstalater;
create database vodoinstalater default charset utf8mb4;
use vodoinstalater;

create table vodoinstalater (
    sifra   int not null primary key auto_increment,
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11)
);

create table popravak (
    sifra           int not null primary key auto_increment,
    datum_pocetka   datetime,
    datum_zavrsetka datetime,
    cijena          decimal(18,2),
    broj_popravaka  int,
    vodoinstalater  int not null,
    segrt           int not null
);

create table kvar (
    sifra int not null primary key auto_increment,
    naziv varchar(50)
);

create table popravak_kvar (
    sifra    int not null primary key auto_increment,
    popravak int not null,
    kvar     int not null
);

create table segrt (
    sifra   int not null primary key auto_increment,
    ime     varchar(50),
    prezime varchar(50),
    placa   decimal(18,2)
);

# definiranje vanjskih ključeva

alter table popravak add foreign key (vodoinstalater) references vodoinstalater(sifra);
alter table popravak add foreign key (segrt) references segrt(sifra);
alter table popravak_kvar add foreign key (popravak) references popravak(sifra);
alter table popravak_kvar add foreign key (kvar) references kvar(sifra);