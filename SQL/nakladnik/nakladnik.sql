# baza podataka za nakladnika
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\nakladnik\nakladnik.sql

drop database if exists nakladnik;
create database nakladnik default charset utf8mb4;
use nakladnik;

create table nakladnik (
    sifra   int not null primary key auto_increment,
    naziv   varchar(50) not null,
    mjesto  int not null,
    aktivan boolean
);

create table mjesto (
    sifra          int not null primary key auto_increment,
    naziv          varchar(50) not null,
    postanski broj varchar(10) not null,
    drzava         varchar(50) default 'Hrvatska'
);

create table djelo (
    sifra int not null primary key auto_increment,
    naziv varchar(100) not null
);

create table izdavanje (
    sifra int not null primary key auto_increment,
    nakladnik int not null,
    djelo int not null
);

# definiranje vanjskih ključeva

alter table nakladnik add foreign key (mjesto) references mjesto(sifra);
alter table izdavanje add foreign key (nakladnik) references nakladnik(sifra);
alter table izdavanje add foreign key (djelo) references djelo(sifra);