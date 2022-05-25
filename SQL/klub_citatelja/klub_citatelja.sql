# baza podataka za klub čitatelja
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\klub_citatelja\klub_citatelja.sql

drop database if exists klub_citatelja;
create database klub_citatelja default charset utf8mb4;
use klub_citatelja;

create table citatelj (
    sifra               int not null primary key auto_increment,
    ime                 varchar(50) not null,
    prezime             varchar(50) not null,
    oib                 char(11),
    datum_pridruzivanja datetime
);

create table knjiga (
    sifra          int not null primary key auto_increment,
    naziv          varchar(50) not null,
    ime_autora     varchar(50) not null,
    prezime_autora varchar(50) not null,
    izdavac        varchar(50),
    posudena       boolean not null,
    vlasnik        int not null
);

create table vlasnik (
    sifra    int not null primary key auto_increment,
    ime      varchar(50),
    prezime  varchar(50),
    citatelj int not null
);

create table citanje (
    sifra    int not null primary key auto_increment,
    citatelj int not null,
    knjiga   int not null
);

# definiranje vanjskih ključeva

alter table citanje add foreign key (citatelj) references citatelj(sifra);
alter table citanje add foreign key (knjiga) references knjiga(sifra);
alter table knjiga add foreign key (vlasnik) references vlasnik(sifra);
alter table vlasnik add foreign key (citatelj) references citatelj(sifra);