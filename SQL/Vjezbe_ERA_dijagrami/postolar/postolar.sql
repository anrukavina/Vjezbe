# baza podataka za postolara
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\postolar.sql
 
drop database if exists postolar;
create database postolar default charset utf8mb4;
use postolar;

create table osoba (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    oib     char(11)
);

create table postolar (
    sifra       int not null primary key auto_increment,
    osoba       int not null,
    br_telefona varchar(50)
);

create table segrt (
    sifra int not null primary key auto_increment,
    osoba int not null,
    placa decimal(18,2)
);

create table korisnik (
    sifra int not null primary key auto_increment,
    osoba int not null,
    obuca int not null
);

create table obuca (
    sifra      int not null primary key auto_increment,
    vrsta      varchar(50),
    proizvodac varchar(50),
    velicina   decimal(18,2),
    boja       varchar(20)
);

create table popravak (
    sifra             int not null primary key auto_increment,
    vrsta             varchar(50),
    cijena            decimal(18,2),
    datum_ostavljanja datetime,
    datum_preuzimanja datetime,
    obuca             int not null,
    postolar          int not null,
    segrt             int not null 
);

# definiranje vanjskih ključeva

alter table postolar add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);
alter table segrt add foreign key (osoba) references osoba(sifra);

alter table korisnik add foreign key (obuca) references obuca(sifra);

alter table popravak add foreign key (obuca) references obuca(sifra);
alter table popravak add foreign key (postolar) references postolar(sifra);
alter table popravak add foreign key (segrt) references segrt(sifra);