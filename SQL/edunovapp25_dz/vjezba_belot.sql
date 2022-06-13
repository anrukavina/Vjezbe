# vježba baze za belot          
# naredba za izvođenje: 
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\edunovapp25_dz\vjezba_belot.sql

drop database if exists vjezba_belot;
create database vjezba_belot default charset utf8mb4;
use vjezba_belot;

create table mjesanje (
    id int not null primary key auto_increment,
    partija int not null,
    stiglja int not null,
    belot int not null,
    datumunosa datetime not null,
    vrsta varchar(50) not null,
    bodovaprviunos int,
    bodovadrugiunos int,
    zvanjeprviunos int,
    zvanjedrugiunos int,
    bodovatreciunos int,
    zvanjetreciunos int
); 

create table partija_igrac (
    partija int not null,
    igrac int not null,
    primary key (partija,igrac)
);

create table partija (
    id int not null primary key auto_increment,
    lokacija int,
    unosi int,
    dokolikoseigra int not null,
    vrsta varchar(50) not null 
);

create table igrac (
    id int not null primary key auto_increment,
    ime varchar(20) not null,
    prezime varchar(20) not null,
    urlslika varchar(100) not null,
    spol int not null
);

create table lokacija (
    id int not null primary key auto_increment,
    longitude decimal(18,4) not null,
    latitude decimal(18,4) not null,
    naziv varchar(50) not null
);

# veze 
alter table mjesanje add foreign key (partija) references partija(id);
alter table partija_igrac add foreign key (partija) references partija(id);
alter table partija_igrac add foreign key (igrac) references igrac(id);
alter table partija add foreign key (lokacija) references lokacija(id);
alter table partija add foreign key (unosi) references igrac(id);

# ~10 min za kreiranje baze podataka i veza + ~5 min za popravak grešaka