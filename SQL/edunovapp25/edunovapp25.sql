# linija koja počne s hash (shift + 3) je komentar
# Ovo je SQL skripta
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\EdunovaPP25\SQL\edunovapp25.sql

drop database if exists edunovapp25;
create database edunovapp25 default charset utf8mb4;
use edunovapp25;
create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2), # kada ne piše not null podrazumijeva se null
    trajanje int,
    upisnina decimal(18,2),
    certificiran boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    datumpocetka datetime,
    maksimalnopolaznika int,
    smjer int not null, # preskačem jer je on entitet
    predavac int # preskačem jer je on entitet
);

create table clan(
    sifra int not null primary key auto_increment,
    grupa int not null, # preskačem jer je on entitet
    polaznik int not null # preskačem jer je on entitet
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null, # preskačem jer je on entitet
    brojugovora varchar(10)
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null, # preskačem jer je on entitet
    iban varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(100),
    oib char(11)
);

# definiranje vanjskih ključeva
alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);
alter table predavac add foreign key (osoba) references osoba(sifra);

# unos podataka
# loš način
# 1 - dobivena vrijednost primarnog ključa
insert into smjer values 
(null,'PHP programiranje',5999.99,130,null,false);

# bolji način
# 2
insert into smjer(naziv,cijena) 
values ('Java programiranje',5999.99);

# primjer dobre prakse
# 3
insert into 
smjer(sifra,naziv,cijena,trajanje,
upisnina,certificiran)
values (null,'Računovodstvo',4000,120,
300,true);


# 1
insert into grupa 
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values 
(null,'PP25','2022-04-23',20,1,null);

insert into grupa
(sifra,naziv,datumpocetka,maksimalnopolaznika,
smjer,predavac)
values
(null,'JP26','2022-04-23',20,2,null);


# 1
insert into osoba (sifra,ime,prezime,email,oib)
values (null,'Tomislav','Jakopec','tjakopec@gmail.com',null);

# unijeti osobu Shaquille O'Neal
# 2
insert into osoba (sifra,ime,prezime,email,oib)
values (null,'Shaquille','O''Neal','saki@gmail.com',null);

# jedna insert naredba može unositi više redaka u tablicu
# 3 - 17
insert into osoba (sifra,ime,prezime,email,oib)
values
(null,'Todorović','Filip','filip.tod95@gmail.com',null),
(null,'Majer','Antonio','majer.antonio@gmail.com',null),
(null,'Filipović','Srđan','srdjanfilipovic991@gmail.com',null),
(null,'Krnjaković','Filip','f.krnja@gmail.com',null),
(null,'Jukić','Željko','zeljac00@icloud',null),
(null,'Pavlinušić','Ante','ante.pavlinusic@gmail.com',null),
(null,'Bikić','Ante','bikic.tm@gmail.com',null),
(null,'Rukavina','Antun','antunrukavina@hotmail',null),
(null,'Poljak','Dino','dinopoljak99@gmail.com',null),
(null,'Rous','Leonard','leonardrous123@gmail.com',null),
(null,'Šakić','Marija','sakicmarija35@gmail.com',null),
(null,'Bukovec','Boris','botaosijek@gmail.com',null),
(null,'Kovač','Filip','chilim.dj@gmail.com',null),
(null,'Vuletić','Antonio','avuletic2212@gmail.com',null),
(null,'Andrija','Kruhoberec','akruhoberec1@outlook.com',null);

# 1 - 2
insert into predavac(sifra,osoba,iban)
values (null,1,null),(null,2,null);


# 1 - 15
insert into polaznik (sifra,osoba,brojugovora)
values
(null,3,null),
(null,4,null),
(null,5,null),
(null,6,null),
(null,7,null),
(null,8,null),
(null,9,null),
(null,10,null),
(null,11,null),
(null,12,null),
(null,13,null),
(null,14,null),
(null,15,null),
(null,16,null),
(null,17,null);

insert into clan (grupa,polaznik)
values (1,1),(1,2),(1,3),(1,4),(1,5),
(1,6),(1,7),(1,8),(1,9),(1,10),
(1,11),(1,12),(1,13),(1,14),(1,15);

# unijeti smjer Tehničar za mrežu

insert into smjer (sifra,naziv,cijena,trajanje,upisnina,certificiran)
values (null,'Tehničar za mrežu',3500,100,550,false);

# unijeti svoju užu rodbinu za polaznike

insert into osoba (sifra,ime,prezime,email,oib)
values 
(null,'Đuro','Rukavina','duro.rukavina@gmail.com',null),
(null,'Anka','Rukavina','anka.rukavina@gmail.com',null),
(null,'Sanja','Rukavina','sanja.rukavina@gmail.com',null),
(null,'Đurđica','Rukavina','durdica.rukavina@gmail.com',null),
(null,'Ivan','Rukavina','ivan.rukavina@gmail.com',null),
(null,'Ana','Rukavina','ana.rukavina@gmail.com',null);

insert into polaznik (sifra,osoba,brojugovora)
values
(null,18,null),
(null,19,null),
(null,20,null),
(null,21,null),
(null,22,null),
(null,23,null);

# PREPORUKA: ne izvoditi update bez where
update smjer set trajanje=130 where sifra=2;

update smjer set 
upisnina=500,
certificiran=true
where sifra=2;

update smjer set trajanje=180 where sifra=2;

# uvećanje za 100 kn
update smjer set cijena=cijena+100;

# umanjenje za 100 kn
update smjer set cijena=cijena-100;

# uvećanje za 10 %
update smjer set cijena=cijena*1.1;

# umanjenje za 10 %
update smjer set cijena=cijena*0.9;

delete from smjer where sifra=3;

#DZ
# Unesi sebe kao predavača

insert into predavac (sifra,osoba,iban)
values (null,10,null);

# Postavite sebi svoj OIB

update osoba set oib=76748185081 where sifra=10;

# Obrrišite sebe iz baze

delete from predavac where sifra=3;
delete from clan where sifra=8;
delete from polaznik where sifra=8;
delete from osoba where sifra=10;