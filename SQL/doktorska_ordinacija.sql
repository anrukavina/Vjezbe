# baza podataka za doktorsku ordinaciju
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\doktorska_ordinacija.sql

drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;
use doktorska_ordinacija;

create table osoba (
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11)
);

create table doktor (
    osoba           varchar(50),
    br_telefona     varchar(50),
    specijalizacija varchar(50)
);

create table pacijent (
    osoba     varchar(50),
    email     varchar(50),
    dijagnoza varchar(50)
);

create table medicinska_sestra (
    osoba          varchar(50),
    strucna_sprema varchar(50),
    placa          varchar(50)
);
