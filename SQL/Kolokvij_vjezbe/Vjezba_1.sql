# kolokvij vježba 1
# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Kolokvij_vjezbe\Vjezba_1.sql

# 0. Kreirajte tablice (16) i veze između tablica. (6)

drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1 default charset utf8mb4;
use kolokvij_vjezba_1;

create table sestra (
    sifra       int not null primary key auto_increment,
    introvertno boolean,
    haljina     varchar(31) not null,
    maraka      decimal(16,6),
    hlace       varchar(46) not null,
    narukvica   int not null
);

create table punac (
    sifra   int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace   varchar(41)
);

create table zena (
    sifra        int not null primary key auto_increment,
    treciputa    datetime,
    hlace        varchar(46),
    kratkamajica varchar(31) not null,
    jmbag        char(11) not null,
    bojaociju    varchar(39) not null,
    haljina      varchar(44),
    sestra       int not null
);

create table cura (
    sifra    int not null primary key auto_increment,
    novcica  decimal(16,5) not null,
    gustoca  decimal(18,6) not null,
    lipa     decimal (13,10),
    ogrlica  int not null,
    bojakose varchar(36),
    suknja   varchar(36),
    punac    int
);

create table muskarac (
    sifra        int not null primary key auto_increment,
    bojaociju    varchar(50) not null,
    hlace        varchar(30),
    modelnaocala varchar(43),
    maraka       decimal(14,5) not null,
    zena         int not null
);

create table mladic (
    sifra        int not null primary key auto_increment,
    suknja       varchar(50) not null,
    kuna         decimal(16,8) not null,
    drugiputa    datetime,
    asocijalno   boolean,
    ekstroventno boolean not null,
    dukserica    varchar(48) not null,
    muskarac     int not null
);

create table sestra_svekar (
    sifra   int not null primary key auto_increment,
    sestra  int not null,
    svekar  int not null
);

create table svekar (
    sifra     int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena   int,
    dukserica varchar(41),
    lipa      decimal(13,8),
    eura      decimal(12,7),
    majica    varchar(35)
);

# veze

alter table zena add foreign key (sestra) references sestra(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);

alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);

alter table cura add foreign key (punac) references punac(sifra);

#1. U tablice muskarac, zena i sestra_svekar unesite po 3 retka. (7)

insert into muskarac (bojaociju,hlace,modelnaocala,maraka,zena)
values
('plava','smeđe','Ray Ban',110.25,1),
('smeđa','traperice','Police',543,2),
('zelena','trenirka','Diesel',883.50,3);

insert into zena (treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra)
values
(null,'traperice','crna','10203040506','plava','smeđa',1),
(null,'trenirka','crvena','60504030201','zelena','bijela',2),
(null,'bijele','bijela','10203040506','smeđa','siva',3);

insert into sestra (introvertno,haljina,maraka,hlace,narukvica)
values
(true,'kratka',251,'traperice',2),
(false,'ljetna',342.2,'khaki',5),
(false,'dugačka',544.85,'crne',3);

insert into svekar (bojaociju,prstena,dukserica,lipa,eura,majica)
values 
('plava',2,'plava',75,153,'bijela'),
('smeđa',4,'bijela',20,220,'plava'),
('zelena',1,'smeđa',50,20,'crna');

insert into sestra_svekar (sestra,svekar)
values
(1,1),
(2,2),
(3,3);

# 2. U tablici cura postavite svim zapisima kolonu gustoca na vrijednost
15,77. (4)

insert into cura (novcica,gustoca,lipa,ogrlica,bojakose,suknja,punac)
values 
(5,16,8,2,'crna','kratka',null),
(10,17,4,1,'smeđa','duga',null),
(15,18,2,3,'plava','smeđa',null);

update cura set gustoca=15.77;

# 3. U tablici mladic obrišite sve zapise čija je vrijednost kolone kuna
veće od 15,78. (4)

insert into mladic (suknja,kuna,drugiputa,asocijalno,ekstroventno,dukserica,muskarac)
values
('nema',12,null,null,false,'crna',2),
('nema',15,null,null,true,'bijela',3),
('nema',30,null,null,false,'plava',4);

delete from mladic where kuna>15.78;

# 4. Izlistajte kratkamajica iz tablice zena uz uvjet da vrijednost kolone
hlace sadrže slova ana. (6)

select kratkamajica from zena where hlace like '%ana%';

# 5. Prikažite dukserica iz tablice svekar, asocijalno iz tablice mladic te
hlace iz tablice muskarac uz uvjet da su vrijednosti kolone hlace iz
tablice zena počinju slovom a te da su vrijednosti kolone haljina iz
tablice sestra sadrže niz znakova ba. Podatke posložite po hlace iz
tablice muskarac silazno. (10)

select a.dukserica,f.asocijalno,e.hlace
from svekar a inner join sestra_svekar b on a.sifra=b.svekar
inner join sestra c on b.sestra=c.sifra 
inner join zena d on c.sifra=d.sestra 
inner join muskarac e on d.sifra=e.zena 
inner join mladic f on e.sifra=f.muskarac
where d.hlace like 'a%' and c.haljina like '%ba%'
group by d.hlace desc;

# 6. Prikažite kolone haljina i maraka iz tablice sestra čiji se primarni
ključ ne nalaze u tablici sestra_svekar. (5)

select haljina,maraka from sestra
where sifra not in (select distinct sestra from sestra_svekar);