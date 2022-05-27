# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Kolokvij_vjezbe\Vjezba_4.sql

# 0. Kreirajte tablice i veze između tablica.

drop database if exists Vjezba_4;
create database Vjezba_4 default charset utf8mb4;
use Vjezba_4;

create table punac (
    sifra int not null primary key auto_increment,
    treciputa datetime,
    majica varchar(46),
    jmbag char(11) not null,
    novcica decimal(18,7) not null,
    maraka decimal(12,6) not null,
    ostavljen int not null
);

create table ostavljen (
    sifra int not null primary key auto_increment,
    modelnaocala varchar(43),
    introvertno boolean,
    kuna decimal(14,10)
);

create table zena (
    sifra int not null primary key auto_increment,
    suknja varchar(39) not null,
    lipa decimal(18,7),
    prstena int not null
);

create table snasa (
    sifra int not null primary key auto_increment,
    introvertno boolean,
    treciputa datetime,
    haljina varchar(44) not null,
    zena int not null
);

create table becar (
    sifra int not null primary key auto_increment,
    novcica decimal(14,8),
    kratkamajica varchar(48) not null,
    bojaociju varchar(36) not null,
    snasa int not null
);

create table prijatelj (
    sifra int not null primary key auto_increment,
    eura decimal(16,9),
    prstena int not null,
    gustoca decimal(16,5),
    jmbag char(11) not null,
    suknja varchar(47) not null,
    becar int not null
);

create table zena_mladic (
    sifra int not null primary key auto_increment,
    zena int not null,
    mladic int not null
);

create table mladic (
    sifra int not null primary key auto_increment,
    kuna decimal(15,9),
    lipa decimal(18,5),
    nausnica int,
    stilfrizura varchar(49),
    vesta varchar(34) not null
);

# veze

alter table punac add foreign key (ostavljen) references ostavljen(sifra);
alter table snasa add foreign key (zena) references zena(sifra);
alter table becar add foreign key (snasa) references snasa(sifra);
alter table prijatelj add foreign key (becar) references becar(sifra);
alter table zena_mladic add foreign key (zena) references zena(sifra);
alter table zena_mladic add foreign key (mladic) references mladic(sifra);


# 1. U tablice becar, snasa i zena_mladic unesite po 3 retka.

insert into zena (suknja,lipa,prstena)
values
('Roza',null,3),
('Plava',null,5),
('Bijela',null,7);

insert into snasa (introvertno,treciputa,haljina,zena)
values
(null,null,'Zelena',1),
(null,null,'Smeđa',2),
(null,null,'Žuta',3);

insert into becar (novcica,kratkamajica,bojaociju,snasa)
values
(null,'Siva','Zelena',1),
(null,'Crvena','Plava',2),
(null,'Šarena','Smeđa',3);

insert into mladic (kuna,lipa,nausnica,stilfrizura,vesta)
values
(null,null,null,null,'Bijela'),
(null,null,null,null,'Crna'),
(null,null,null,null,'Plava');

insert into zena_mladic (zena,mladic)
values
(1,1),
(2,2),
(3,3);

# 2. U tablici punac postavite svim zapisima kolonu majica na
# vrijednost Osijek.

update punac set majica='Osijek';

# 3. U tablici prijatelj obrišite sve zapise čija je vrijednost kolone
# prstena veće od 17.

delete from prijatelj where prstena>17;

# 4. Izlistajte haljina iz tablice snasa uz uvjet da vrijednost kolone
# treciputa nepoznate.

select haljina from snasa 
where treciputa is null;

# 5. Prikažite nausnica iz tablice mladic, jmbag iz tablice prijatelj te
# kratkamajica iz tablice becar uz uvjet da su vrijednosti kolone
# treciputa iz tablice snasa poznate te da su vrijednosti kolone lipa iz
# tablice zena različite od 29. Podatke posložite po kratkamajica iz
# tablice becar silazno.

select a.nausnica,f.jmbag,e.kratkamajica
from mladic a inner join zena_mladic b on a.sifra=b.mladic 
inner join zena c on b.zena=c.sifra 
inner join snasa d on c.sifra=d.zena 
inner join becar e on d.sifra=e.snasa 
inner join prijatelj f on e.sifra=f.becar 
where d.treciputa is not null and c.lipa<>29
order by e.kratkamajica desc;

# 6. Prikažite kolone lipa i prstena iz tablice zena čiji se primarni ključ
# ne nalaze u tablici zena_mladic.

select lipa,prstena from zena 
where sifra not in (select distinct zena from zena_mladic);