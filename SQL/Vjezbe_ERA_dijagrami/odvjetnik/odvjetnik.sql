# baza podataka za odvjetnika
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\odvjetnik\odvjetnik.sql

drop database if exists odvjetnik;
create database odvjetnik default charset utf8mb4;
use odvjetnik;

create table odvjetnik (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table klijent (
    sifra         int not null primary key auto_increment,
    ime           varchar(50) not null,
    prezime       varchar(50) not null,
    datum_rodenja datetime
);

create table obrana (
    sifra         int not null primary key auto_increment,
    naziv_slucaja varchar(50) not null,
    odvjetnik     int not null,
    klijent       int not null
);

create table suradnik (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    placa   decimal(18,2)
);

create table suradnik_obrana (
    sifra    int not null primary key auto_increment,
    suradnik int not null,
    obrana   int not null
);

# definiranje vanjskih ključeva

alter table obrana add foreign key (odvjetnik) references odvjetnik(sifra);
alter table obrana add foreign key (klijent) references klijent(sifra);
alter table suradnik_obrana add foreign key (suradnik) references suradnik(sifra);
alter table suradnik_obrana add foreign key (obrana) references obrana(sifra);