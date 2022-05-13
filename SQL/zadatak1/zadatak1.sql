# unijeti 3 županije, 6 općina, 12 mjesta, 3 župana
# promijeniti 5 mjesta
# obrisati 2 općine
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\zadatak1\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1 default charset utf8mb4;
use zadatak1;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int not null
);

create table zupan (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null
);

create table opcina (
    sifra    int not null primary key auto_increment,
    zupanija int not null,
    naziv    varchar(50)
);

create table mjesto (
    sifra  int not null primary key auto_increment,
    opcina int not null,
    naziv  varchar(50)
);

# definiranje vanjskih ključeva

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);