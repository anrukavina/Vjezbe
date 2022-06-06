# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Kolokvij_vjezbe\Vjezba_6.sql

# 0. Kreirajte tablice (16) i veze između tablica. (6)

drop database if exists Vjezba_6;
create database Vjezba_6 default charset utf8mb4;
use Vjezba_6;

create table prijatelj (
    sifra int not null primary key auto_increment,
    haljina varchar(35),
    prstena int not null,
    introvertno boolean,
    stilfrizura varchar(36) not null
);

create table prijatelj_ostavljena (
    sifra int not null primary key auto_increment,
    prijatelj int not null,
    ostavljena int not null
);

create table ostavljena (
    sifra int not null primary key auto_increment,
    prviputa datetime not null,
    kratkamajica varchar(39) not null,
    drugiputa datetime,
    maraka decimal(14,10)
);

create table brat (
    sifra int not null primary key auto_increment,
    nausnica int not null,
    treciputa datetime not null,
    narukvica int not null,
    hlace varchar(31),
    prijatelj int
);

create table zena (
    sifra int not null primary key auto_increment,
    novcica decimal(14,8) not null,
    narukvica int not null,
    dukserica varchar(40) not null,
    haljina varchar(30),
    hlace varchar(32),
    brat int not null
);

create table decko (
    sifra int not null primary key auto_increment,
    prviputa datetime,
    modelnaocala varchar(41),
    nausnica int,
    zena int not null
);

create table svekrva (
    sifra int not null primary key auto_increment,
    hlace varchar(48) not null,
    suknja varchar(42) not null,
    ogrlica int not null,
    treciputa datetime not null,
    dukserica varchar(32) not null,
    narukvica int not null,
    punac int
);

create table punac (
    sifra int not null primary key auto_increment,
    ekstroventno boolean not null,
    suknja varchar(30) not null,
    majica varchar(44) not null,
    prviputa datetime not null
);

# veze

alter table prijatelj_ostavljena add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_ostavljena add foreign key (ostavljena) references ostavljena(sifra);
alter table brat add foreign key (prijatelj) references prijatelj(sifra);
alter table zena add foreign key (brat) references brat(sifra);
alter table decko add foreign key (zena) references zena(sifra);
alter table svekrva add foreign key (punac) references punac(sifra);

# 1. U tablice zena, brat i prijatelj_ostavljena unesite po 3 retka. (7)

INSERT INTO brat
(nausnica, treciputa, narukvica, hlace, prijatelj)
values
(5, '2015-01-08', 2, NULL, NULL),
(3, '2019-11-28', 1, NULL, NULL),
(9, '2009-10-20', 4, NULL, NULL);

INSERT INTO zena
(novcica, narukvica, dukserica, haljina, hlace, brat)
values
(14, 7, 'zelena', NULL, NULL, 1),
(21, 5, 'plava', NULL, NULL, 2),
(33.5, 11, 'bijela', NULL, NULL, 3);

INSERT INTO prijatelj
(haljina, prstena, introvertno, stilfrizura)
values
(NULL, 3, NULL, 'kovrčava'),
(NULL, 2, NULL, 'ravna'),
(NULL, 4, NULL, 'rep');

INSERT INTO ostavljena
(prviputa, kratkamajica, drugiputa, maraka)
VALUES
('2011-09-11', 'bijela', NULL, NULL),
('1987-04-03', 'smeđa', NULL, NULL),
('1999-11-05', 'žuta', NULL, NULL);

INSERT INTO prijatelj_ostavljena
(prijatelj, ostavljena)
VALUES
(1, 1),
(2, 2),
(3, 3);

# 2. U tablici svekrva postavite svim zapisima kolonu suknja na
# vrijednost Osijek. (4)

update svekrva set suknja='Osijek';

# 3. U tablici decko obrišite sve zapise čija je vrijednost kolone
# modelnaocala manje od AB. (4)

delete from decko where modelnaocala < 'AB';

# 4. Izlistajte narukvica iz tablice brat uz uvjet da vrijednost kolone
# treciputa nepoznate. (6)

select narukvica from brat where treciputa is null;

# 5. Prikažite drugiputa iz tablice ostavljena, zena iz tablice decko te
# narukvica iz tablice zena uz uvjet da su vrijednosti kolone treciputa iz
# tablice brat poznate te da su vrijednosti kolone prstena iz tablice
# prijatelj jednake broju 219. Podatke posložite po narukvica iz tablice
# zena silazno. (10)

select a.drugiputa,f.zena,e.narukvica 
from ostavljena a inner join prijatelj_ostavljena b 
on a.sifra=b.ostavljena 
inner join prijatelj c 
on b.prijatelj=c.sifra 
inner join brat d 
on c.sifra=d.prijatelj 
inner join zena e 
on d.sifra=e.brat 
inner join decko f 
on e.sifra=f.zena 
where d.treciputa is not null and c.prstena=219
order by e.narukvica desc;

# 6. Prikažite kolone prstena i introvertno iz tablice prijatelj čiji se
# primarni ključ ne nalaze u tablici prijatelj_ostavljena. (5)

select prstena,introvertno from prijatelj
where sifra not in (select sifra from prijatelj_ostavljena);