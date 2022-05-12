# baza podataka za samostan
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\samostan.sql

drop database if exists samostan;
create database samostan default charset utf8mb4;
use samostan;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table svecenik (
    sifra              int not null primary key auto_increment,
    osoba              int not null,
    posao              int not null
);

create table posao (
    sifra              int not null primary key auto_increment,
    naziv              varchar(50),
    vrsta              varchar(50),
    vrijeme_pocetka    datetime,
    vrijeme_zavrsetka  datetime,
    svecenik           int not null,
    nadredeni_svecenik int not null
);

create table nadredeni_svecenik (
    sifra              int not null primary key auto_increment,
    osoba              int not null,
    posao              int not null,
    podredeni_svecenik int not null
);

# definiranje vanjskih ključeva

alter table svecenik add foreign key (osoba) references osoba(sifra);
alter table svecenik add foreign key (posao) references posao(sifra);
alter table nadredeni_svecenik add foreign key (osoba) references osoba(sifra);

alter table posao add foreign key (svecenik) references svecenik(sifra);
alter table posao add foreign key (nadredeni_svecenik) references nadredeni_svecenik(sifra);

alter table nadredeni_svecenik add foreign key (podredeni_svecenik) references svecenik(sifra);