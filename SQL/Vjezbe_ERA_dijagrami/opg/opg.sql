# baza podataka za obiteljsko poljoprivredno gospodarstvo
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\opg\opg.sql

drop database if exists opg;
create database opg default charset utf8mb4;
use opg;

create table proizvod (
    sifra     int not null primary key auto_increment,
    naziv     varchar(50),
    vrsta     varchar(50),
    cijena    decimal(18,2),
    djelatnik int not null
);

create table sirovina (
    sifra int not null primary key auto_increment,
    naziv varchar(50)
);

create table djelatnik (
    sifra   int not null primary key auto_increment,
    ime     varchar(50),
    prezime varchar(50),
    oib     char(11),
    placa   decimal(18,2)
);

create table proizvodnja (
    sifra    int not null primary key auto_increment,
    proizvod int not null,
    sirovina int not null
);

# definiranje vanjskih ključeva

alter table proizvod add foreign key (djelatnik) references djelatnik(sifra);
alter table proizvodnja add foreign key (proizvod) references proizvod(sifra);
alter table proizvodnja add foreign key (sirovina) references sirovina(sifra);