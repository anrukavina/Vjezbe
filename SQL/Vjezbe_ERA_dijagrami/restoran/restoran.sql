# baza podataka za restoran
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\restoran\restoran.sql

drop database if exists restoran;
create database restoran default charset utf8mb4;
use restoran;

create table jelovnik (
    sifra      int not null primary key auto_increment,
    naziv      varchar(50),
    kategorija int
);

create table kategorija (
    sifra int not null primary key auto_increment,
    opis  text
);

create table jelo (
    sifra      int not null primary key auto_increment,
    naziv      varchar(50),
    cijena     decimal(18,2),
    opis       text,
    kategorija int not null
);

create table pice (
    sifra  int not null primary key auto_increment,
    naziv  varchar(50),
    cijena decimal(18,2),
    vrsta  varchar(50),
    opis   text
);

create table narudzba (
    sifra int not null primary key auto_increment,
    jelo  int not null,
    pice  int not null,
    kolicina int
);

# definiranje vanjskih ključeva

alter table jelovnik add foreign key (kategorija) references kategorija(sifra);
alter table jelo add foreign key (kategorija) references kategorija(sifra);
alter table narudzba add foreign key (jelo) references jelo(sifra);
alter table narudzba add foreign key (pice) references pice(sifra);