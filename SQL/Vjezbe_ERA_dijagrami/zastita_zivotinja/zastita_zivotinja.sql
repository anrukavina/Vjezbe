# baza podataka za udrugu za zastitu zivotinja
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_ERA_dijagrami\zastita_zivotinja.sql

drop database if exists zastita_zivotinja;
create database zastita_zivotinja default charset utf8mb4;
use zastita_zivotinja;

create table djelatnik (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    placa   decimal(18,2),
    oib     char(11)
);

create table sticenik (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    vrsta   varchar(50) not null,
    pasmina varchar(50),
    boja    varchar(50),
    dob     int
);

create table prostor (
    sifra    int not null primary key auto_increment,
    tip      varchar(50),
    duljina  decimal(18,2),
    sirina   decimal(18,2),
    visina   decimal(18,2),
    sticenik int not null
);

create table briga_o_sticeniku (
    sifra     int not null primary key auto_increment,
    djelatnik int not null,
    sticenik  int not null
);

# definiranje vanjskih ključeva

alter table prostor add foreign key (sticenik) references sticenik(sifra);
alter table briga_o_sticeniku add foreign key (djelatnik) references djelatnik(sifra);
alter table briga_o_sticeniku add foreign key (sticenik) references sticenik(sifra);