# baza podataka 
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\djecja_igraonica\djecja_igraonica.sql

drop database if exists djecja_igraonica;
create database djecja_igraonica default charset utf8mb4;
use djecja_igraonica;

create table dijete (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    starost int
);

create table teta (
    sifra          int not null primary key auto_increment,
    ime            varchar(50) not null,
    prezime        varchar(50) not null,
    strucna_sprema varchar(50),
    placa          decimal(18,2)
);

create table skupina (
    sifra      int not null primary key auto_increment,
    naziv      varchar(50) not null,
    broj_djece int,
    teta       int not null
);

create table igranje (
    sifra   int not null primary key auto_increment,
    dijete  int not null,
    skupina int not null
);

# definiranje vanjskih ključeva

alter table igranje add foreign key (dijete) references dijete(sifra);
alter table igranje add foreign key (skupina) references skupina(sifra);
alter table skupina add foreign key (teta) references teta(sifra);