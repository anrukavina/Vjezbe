# kolokvij vježba 2
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Kolokvij_vjezbe\Vjezba_2.sql

# 0. Kreirajte tablice i veze između tablica.

drop database if exists Vjezba_2;
create database Vjezba_2 default charset utf8mb4;
use Vjezba_2;

create table cura (
    sifra int not null primary key auto_increment,
    haljina varchar(33) not null,
    drugiputa datetime not null,
    suknja varchar(38),
    narukvica int,
    introvertno boolean,
    majica varchar(40) not null,
    decko int
);

create table neprijatelj (
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43) not null,
    lipa decimal(16,8),
    modelnaocala varchar(49) not null,
    kuna decimal(12,6) not null,
    jmbag char(11),
    cura int
);

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int not null,
    asocijalno boolean not null,
    neprijatelj int not null
);

create table decko (
    sifra int not null primary key auto_increment,
    indiferentno boolean,
    vesta varchar(34),
    asocijalno boolean not null
);

create table decko_zarucnica (
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table zarucnica (
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37) not null,
    novcica decimal(15,9),
    lipa decimal(15,8) not null,
    indiferentno boolean
);

create table prijatelj (
    sifra int not null primary key auto_increment,
    modelnaocala varchar(37),
    treciputa datetime not null,
    ekstroventno boolean not null,
    prviputa datetime,
    svekar int not null
);

create table svekar (
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int not null,
    asocijalno boolean not null
);

# veze

alter table cura add foreign key (decko) references decko(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);

alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);

alter table prijatelj add foreign key (svekar) references svekar(sifra);

# 1. U tablice neprijatelj, cura i decko_zarucnica unesite po 3 retka.¸

insert into neprijatelj (majica,haljina,lipa,modelnaocala,kuna,jmbag,cura)
values
(null,'Roza',null,'Ray-Ban',256,null,null),
(null,'Ljubičasta',null,'Police',14,null,null),
(null,'Dugačka',null,'Prada',46,null,null);

insert into cura (haljina,drugiputa,suknja,narukvica,introvertno,majica,decko)
values
('Kratka','2020-02-02',null,null,null,'Plava',null),
('Ljetna','1985-10-09',null,null,null,'Bijela',null),
('Plava','2007-04-26',null,null,null,'Narančasta',null);

insert into decko (indiferentno,vesta,asocijalno)
values
(null,null,true),
(null,null,false),
(null,null,false);

insert into zarucnica (narukvica,bojakose,novcica,lipa,indiferentno)
values
(null,'Plava',null,31,null),
(null,'Smeđa',null,123,null),
(null,'Crvena',null,14,null);

insert into decko_zarucnica (decko,zarucnica)
values
(1,1),
(2,2),
(3,3);

# 2. U tablici prijatelj postavite svim zapisima kolonu treciputa na
# vrijednost 30. travnja 2020.

alter table prijatelj alter treciputa set default '2020-04-30';

# ili update prijatelj set treciputa='2020-04-30';

# 3. U tablici brat obrišite sve zapise čija je vrijednost kolone ogrlica
# različito od 14.

delete from brat where ogrlica!=14;

# 4. Izlistajte suknja iz tablice cura uz uvjet da vrijednost kolone
# drugiputa nepoznate.

select suknja from cura where drugiputa is null;

# 5. Prikažite novcica iz tablice zarucnica, neprijatelj iz tablice brat te
# haljina iz tablice neprijatelj uz uvjet da su vrijednosti kolone
# drugiputa iz tablice cura poznate te da su vrijednosti kolone vesta iz
# tablice decko sadrže niz znakova ba. Podatke posložite po haljina iz
# tablice neprijatelj silazno.

select a.novcica,f.neprijatelj,e.haljina
from zarucnica a inner join decko_zarucnica b on a.sifra=b.zarucnica 
inner join decko c on b.decko=c.sifra 
inner join cura d on c.sifra=d.decko 
inner join neprijatelj e on d.sifra=e.cura 
inner join brat f on e.sifra=f.neprijatelj
where d.drugiputa is not null and c.vesta like '%ba%'
group by e.haljina desc;

# 6. Prikažite kolone vesta i asocijalno iz tablice decko čiji se primarni
#   ključ ne nalaze u tablici decko_zarucnica.

select vesta,asocijalno from decko 
where sifra not in (select distinct decko from decko_zarucnica);