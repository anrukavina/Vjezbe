# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Kolokvij_vjezbe\Vjezba_5.sql


# 0. Kreirajte tablice (16) i veze između tablica. (6)

drop database if exists Vjezba_5;
create database Vjezba_5 default charset utf8mb4;
use Vjezba_5;

create table mladic (
    sifra int not null primary key auto_increment,
    kratkamajica varchar(48) not null,
    haljina varchar(30) not null,
    asocijalno boolean,
    zarucnik int
);

create table zarucnik (
    sifra int not null primary key auto_increment,
    jmbag char(11),
    lipa decimal(12,8),
    indiferentno boolean not null
);

create table svekar (
    sifra int not null primary key auto_increment,
    bojakose varchar(33),
    majica varchar(31),
    carape varchar(31) not null,
    haljina varchar(43),
    narukvica int,
    eura decimal(14,5) not null
);

create table svekar_cura (
    sifra int not null primary key auto_increment,
    svekar int not null,
    cura int not null
);

create table cura (
    sifra int not null primary key auto_increment,
    carape varchar(41) not null,
    maraka decimal(17,10) not null,
    asocijalno boolean,
    vesta varchar(47) not null
);

create table punac (
    sifra int not null primary key auto_increment,
    dukserica varchar(33),
    prviputa datetime not null,
    majica varchar(36),
    svekar int not null
);

create table punica (
    sifra int not null primary key auto_increment,
    hlace varchar(43) not null,
    nausnica int not null,
    ogrlica int,
    vesta varchar(49) not null,
    modelnaocala varchar(31) not null,
    treciputa datetime not null,
    punac int not null
);

create table ostavljena (
    sifra int not null primary key auto_increment,
    majica varchar(33),
    ogrlica int not null,
    carape varchar(44),
    stilfrizura varchar(42),
    punica int not null
);

# veze

alter table mladic add foreign key (zarucnik) references zarucnik(sifra);
alter table punac add foreign key (svekar) references svekar(sifra);
alter table punica add foreign key (punac) references punac(sifra);
alter table ostavljena add foreign key (punica) references punica(sifra);
alter table svekar_cura add foreign key (svekar) references svekar(sifra);
alter table svekar_cura add foreign key (cura) references cura(sifra);


# 1. U tablice punica, punac i svekar_cura unesite po 3 retka. (7)

insert into svekar (bojakose,majica,carape,haljina,narukvica,eura)
values
(null,null,'duge',null,null,150),
(null,null,'stopalice',null,null,10),
(null,null,'sportske',null,null,12.5);

insert into punac (dukserica,prviputa,majica,svekar)
values 
(null,'2021-03-24',null,1),
(null,'2019-11-02',null,2),
(null,'2020-09-04',null,3);

insert into punica (hlace,nausnica,ogrlica,vesta,modelnaocala,treciputa,punac)
values
('Traperice',1,null,'Bijela','Ray-Ban','2010-11-27',1),
('Kratke',4,null,'Siva','Police','2022-01-17',2),
('Smeđe',1,null,'Plava','Diesel','2018-07-16',3);

insert into cura (carape,maraka,asocijalno,vesta)
values
('klasične',55,null,'Bijela'),
('klasične',55,null,'Bijela'),
('klasične',55,null,'Bijela');

INSERT INTO svekar_cura
VALUES
(1,1),
(2,2),
(3,3);

# 2. U tablici mladic postavite svim zapisima kolonu haljina na
# vrijednost Osijek. (4)

UPDATE mladic SET haljina='Osijek';

# 3. U tablici ostavljena obrišite sve zapise čija je vrijednost kolone
# ogrlica jednako 17. (4)

DELETE FROM ostavljena WHERE ogrlica=17;

# 4. Izlistajte majica iz tablice punac uz uvjet da vrijednost kolone
# prviputa nepoznate. (6)

SELECT majica FROM punac WHERE prviputa IS NULL;

# 5. Prikažite asocijalno iz tablice cura, stilfrizura iz tablice ostavljena te
# nausnica iz tablice punica uz uvjet da su vrijednosti kolone prviputa iz
# tablice punac poznate te da su vrijednosti kolone majica iz tablice
# svekar sadrže niz znakova ba. Podatke posložite po nausnica iz tablice
# punica silazno. (10)

SELECT a.asocijalno AS asocijalno_cura,f.ostavljena AS ostavljena_stilfrizura,e.nausnica AS nausnica_punica
FROM cura a INNER JOIN svekar_cura b
ON a.sifra=b.cura
INNER JOIN svekar c
ON b.svekar=c.sifra
INNER JOIN punac d
ON c.sifra=d.svekar
INNER JOIN punica e
ON d.sifra=e.punac
INNER JOIN ostavljena f
ON e.sifra=f.punica
WHERE d.prviputa IS NOT NULL
AND c.majica LIKE '%ba%'
ORDER BY e.nausnica DESC;

# 6. Prikažite kolone majica i carape iz tablice svekar čiji se primarni
# ključ ne nalaze u tablici svekar_cura. (5)

SELECT majica,carape FROM svekar
WHERE sifra NOT IN (SELECT sifra FROM svekar_cura);