# baza podataka za trgovački centar
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\trgovacki_centar\trgovacki_centar.sql

drop database if exists trgovacki_centar;
create database trgovacki_centar default charset utf8mb4;
use trgovacki_centar;

create table trgovina (
    sifra         int not null primary key auto_increment,
    naziv         varchar(50) not null,
    broj_trgovine int,
    sef           int not null
);

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char    (11)
);

create table sef (
    sifra int not null primary key auto_increment,
    placa decimal(18,2),
    osoba int not null
);

create table posao (
    sifra    int not null primary key auto_increment,
    trgovina int not null,
    osoba    int not null
);

# definiranje vanjskih ključeva

alter table sef add foreign key (osoba) references osoba(sifra);
alter table posao add foreign key (trgovina) references trgovina(sifra);
alter table posao add foreign key (osoba) references osoba(sifra);
alter table trgovina add foreign key (sef) references sef(sifra);