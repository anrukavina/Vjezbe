# baza podataka za urar silvija
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8< C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\urar_silvija.sql

drop database if exists urar_silvija;
create database urar_silvija default charset utf8mb4;
use urar_silvija;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table urar (
    sifra int not null primary key auto_increment,
    osoba int not null
);

create table korisnik (
    sifra int not null primary key auto_increment,
    osoba int not null,
    sat   int not null
);

create table segrt (
    sifra int not null primary key auto_increment,
    placa decimal(18,2),
    osoba int not null
);

create table sat (
    sifra      int not null primary key auto_increment,
    vrsta      varchar(50),
    proizvodac varchar(50),
    model      varchar(50),
    boja       varchar(50)
);

create table popravak (
    sifra             int not null primary key auto_increment,
    datum_primitka    datetime,
    datum_preuzimanja datetime,
    cijena            decimal(18,2),
    sat               int not null,
    urar              int not null,
    segrt             int not null
);

# definiranje vanjskih ključeva

alter table urar add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);
alter table segrt add foreign key (osoba) references osoba(sifra);

alter table korisnik add foreign key (sat) references sat(sifra);

alter table popravak add foreign key (sat) references sat(sifra);
alter table popravak add foreign key (urar) references urar(sifra);
alter table popravak add foreign key (segrt) references segrt(sifra);