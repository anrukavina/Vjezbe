# baza podataka za srednju školu
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\srednja_skola\srednja_skola.sql

drop database if exists srednja_skola;
create database srednja_skola default charset utf8mb4;
use srednja_skola;

create table razred (
    sifra  int not null primary key auto_increment,
    naziv  varchar(5),
    godina int
);

create table ucenik (
    sifra          int not null primary key auto_increment,
    ime            varchar(50) not null,
    prezime        varchar(50) not null,
    oib            char(11),
    datum_rodenja  datetime,
    prosjek_ocjena decimal(18,2),
    razred         int not null
);

create table profesor (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11),
    placa   decimal(18,2)
);

create table nastava (
    sifra  int not null primary key auto_increment,
    razred int not null,
    profesor int not null
);

# definiranje vanjskih ključeva

alter table ucenik add foreign key (razred) references razred(sifra);
alter table nastava add foreign key (razred) references razred(sifra);
alter table nastava add foreign key (profesor) references profesor(sifra);