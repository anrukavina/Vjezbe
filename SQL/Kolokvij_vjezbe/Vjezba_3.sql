# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Kolokvij_vjezbe\Vjezba_3.sql

# 0. Kreirajte tablice i veze između tablica.

drop database if exists Vjezba_3;
create database Vjezba_3 default charset utf8mb4;
use Vjezba_3;

create table svekar (
    sifra int not null primary key auto_increment,
    novcica decimal(16,8) not null,
    suknja varchar(44) not null,
    bojakose varchar(36),
    prstena int,
    narukvica int not null,
    cura int not null
);

create table cura (
    sifra int not null primary key auto_increment,
    dukserica varchar(49),
    maraka decimal(13,7),
    drugiputa datetime,
    majica varchar(49),
    novcica decimal(15,8),
    ogrlica int not null
);

create table ostavljena (
    sifra int not null primary key auto_increment,
    kuna decimal(17,5),
    lipa decimal(15,6),
    majica varchar(36),
    modelnaocala varchar(31) not null,
    prijatelj int
);

create table prijatelj (
    sifra int not null primary key auto_increment,
    kuna decimal(16,10),
    haljina varchar(37),
    lipa decimal(13,10),
    dukserica varchar(31),
    indiferentno boolean not null
);

create table prijatelj_brat (
    sifra int not null primary key auto_increment,
    prijatelj int not null,
    brat int not null
);

create table brat (
    sifra int not null primary key auto_increment,
    jmbag char(11),
    ogrlica int not null,
    ekstroventno boolean not null
);

create table snasa (
    sifra int not null primary key auto_increment,
    introvertno boolean,
    kuna decimal(15,6) not null,
    eura decimal(12,9) not null,
    treciputa datetime,
    ostavljena int not null
);

create table punica (
    sifra int not null primary key auto_increment,
    asocijalno boolean,
    kratkamajica varchar(44),
    kuna decimal(13,8) not null,
    vesta varchar(32) not null,
    snasa int
);

# veze

alter table svekar add foreign key (cura) references cura(sifra);
alter table snasa add foreign key (ostavljena) references ostavljena(sifra);
alter table punica add foreign key (snasa) references snasa(sifra);
alter table ostavljena add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key (brat) references brat(sifra);

# 1. U tablice snasa, ostavljena i prijatelj_brat unesite po 3 retka.

insert into ostavljena (kuna,lipa,majica,modelnaocala,prijatelj)
values
(15,5,null,'Ray-Ban',null),
(2,10,null,'Prada',null),
(49,25,null,'Police',null);

insert into snasa (introvertno,kuna,eura,treciputa,ostavljena)
values
(null,7,20,null,1),
(null,33,5,null,2),
(null,50,100,null,3);

insert into prijatelj (kuna,haljina,lipa,dukserica,indiferentno)
values
(76,null,119,'Crna',true),
(11,null,20,'Bijela',false),
(5,null,50,'Žuta',false);

insert into brat (jmbag,ogrlica,ekstroventno)
values
(null,2,false),
(null,6,true),
(null,1,true);

insert into prijatelj_brat (prijatelj,brat)
values
(1,1),
(2,2),
(3,3);

# 2. U tablici svekar postavite svim zapisima kolonu suknja na
# vrijednost Osijek.

update svekar set suknja='Osijek';

# 3. U tablici punica obrišite sve zapise čija je vrijednost kolone
# kratkamajica jednako AB.

delete from punica where kratkamajica='AB';

# 4. Izlistajte majica iz tablice ostavljena uz uvjet da vrijednost kolone
# lipa nije 9,10,20,30 ili 35.

select majica from ostavljena
where lipa not in (9,10,20,30,35);

# 5. Prikažite ekstroventno iz tablice brat, vesta iz tablice punica te
# kuna iz tablice snasa uz uvjet da su vrijednosti kolone lipa iz tablice
# ostavljena različito od 91 te da su vrijednosti kolone haljina iz tablice
# prijatelj sadrže niz znakova ba. Podatke posložite po kuna iz tablice
# snasa silazno.

select a.ekstroventno,f.vesta,e.kuna
from brat a inner join prijatelj_brat b on a.sifra=b.brat 
inner join prijatelj c on b.prijatelj=c.sifra
inner join ostavljena d on c.sifra=d.prijatelj
inner join snasa e on d.sifra=e.ostavljena 
inner join punica f on e.sifra=f.snasa
where d.lipa!=91 and c.haljina like '%ba%'
group by e.kuna desc;

# 6. Prikažite kolone haljina i lipa iz tablice prijatelj čiji se primarni ključ
# ne nalaze u tablici prijatelj_brat.

select haljina,lipa from prijatelj
where sifra not in (select distinct prijatelj from prijatelj_brat);