# baza podataka za fakultet
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\fakultet\fakultet.sql

drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student (
    sifra          int not null primary key auto_increment,
    ime            varchar(50) not null,
    prezime        varchar(50) not null,
    jmbag          char(10),
    godina_studija int
);

create table rok (
    sifra          int not null primary key auto_increment,
    datum          datetime,
    broj_studenata int,
    naziv_kolegija varchar(100),
    semestar       int 
);

create table prijava (
    sifra             int not null primary key auto_increment,
    datum_prijave     datetime,
    broj_prijavljenih int,
    student           int not null,
    rok               int not null
);

# definiranje vanjskih ključeva

alter table prijava add foreign key (student) references student(sifra);
alter table prijava add foreign key (rok) references rok(sifra);