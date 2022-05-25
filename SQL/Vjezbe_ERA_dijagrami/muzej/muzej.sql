# baza podataka za muzej
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\muzej.sql

drop database if exists muzej;
create database muzej default charset utf8mb4;
use muzej;

create table izlozba (
    sifra           int not null primary key auto_increment,
    naziv           varchar(50) not null,
    oblik           varchar(50),
    datum_pocetka   datetime,
    datum_zavrsetka datetime,
    djelo           int not null,
    kustos          int not null,
    sponzor         int not null
);

create table djelo (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    vrsta varchar(50),
    autor varchar(50) not null
);

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table kustos (
    sifra   int not null primary key auto_increment,
    osoba   int not null,
    placa   decimal(18,2),
    titula  varchar(100)
);

create table sponzor (
    sifra          int not null primary key auto_increment,
    osoba          int not null,
    iznos_donacije decimal(18,2),
    tvrtka         varchar(50)
);

# definiranje vanjskih ključeva

alter table kustos add foreign key (osoba) references osoba(sifra);
alter table sponzor add foreign key (osoba) references osoba(sifra);

alter table izlozba add foreign key (djelo) references djelo(sifra);
alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);