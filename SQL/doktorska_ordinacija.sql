# baza podataka za doktorsku ordinaciju
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\doktorska_ordinacija.sql

drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;
use doktorska_ordinacija;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table doktor (
    sifra           int not null primary key auto_increment,
    osoba           int not null,
    specijalizacija varchar(50)
);

create table pacijent (
    sifra     int not null primary key auto_increment,
    osoba     int not null,
    email     varchar(100)
);

create table medicinska_sestra (
    sifra          int not null primary key auto_increment,
    osoba          int not null,
    strucna_sprema varchar(50),
    placa          decimal(18,2)
);

create table lijecenje (
    sifra    int not null primary key auto_increment,
    pocetak  datetime,
    kraj     datetime,
    izljecen boolean    
);
