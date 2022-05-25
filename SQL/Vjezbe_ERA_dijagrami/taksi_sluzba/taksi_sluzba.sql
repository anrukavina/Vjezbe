# baza podataka za taksi sluzbu   
# nareda za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\taksi_sluzba.sql

drop database if exists taksi_sluzba;
create database taksi_sluzba default charset utf8mb4;
use taksi_sluzba;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table vozac (
    sifra  int not null primary key auto_increment,
    osoba  int not null,
    vozilo int not null,
    iban   varchar(50)
);

create table putnik (
    sifra int not null primary key auto_increment,
    osoba int not null
);

create table vozilo (
    sifra      int not null primary key auto_increment,
    proizvodac varchar(50),
    model      varchar(50),
    tip        varchar(50),
    boja       varchar(50)
);

create table voznja (
    sifra            int not null primary key auto_increment,
    pocetak_voznje   datetime,
    zavrsetak_voznje datetime,
    cijena           decimal(18,2),
    vozac            int not null,
    putnik           int not null 
);

# definiranje vanjskih ključeva

alter table vozac add foreign key (osoba) references osoba(sifra);
alter table vozac add foreign key (vozilo) references vozilo(sifra);

alter table putnik add foreign key (osoba) references osoba(sifra);

alter table voznja add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik) references putnik(sifra);