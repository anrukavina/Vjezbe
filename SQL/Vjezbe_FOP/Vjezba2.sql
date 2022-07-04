# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_FOP\Vjezba2.sql

# kreiranje baze

drop database if exists Vjezba2;
create database Vjezba2 default charset utf8mb4;
use Vjezba2;

create table muskarac (
    id int(11) not null primary key auto_increment,
    eura decimal(15,7) not null,
    haljina varchar(41) not null,
    hlace varchar(34) not null,
    bojakose varchar(42) not null,
    narukvica int(11),
    prijatelj int(11) not null
);

create table prijatelj (
    id int(11) not null primary key auto_increment,
    gustoca decimal(16,5),
    suknja varchar(41) not null,
    asocijalno tinyint(1) not null,
    majica varchar(48),
    prstena int(11) not null
);

create table becar (
    id int(11) not null primary key auto_increment,
    maraka decimal(12,10),
    treciputa datetime not null,
    ekstroventno tinyint(1) not null,
    nausnica int(11)
);

create table ostavljen (
    id int(11) not null primary key auto_increment,
    ekstroventno tinyint(1) not null,
    bojaociju varchar(38) not null,
    nausnica int(11) not null,
    gustoca decimal(16,7),
    narukvica int(11)
);

create table zarucnik (
    id int(11) not null primary key auto_increment,
    kratkamajica varchar(44),
    lipa decimal(15,8),
    ekstroventno tinyint(1) not null,
    ogrlica int(11) not null,
    narukvica int(11) 
);

# veze

alter table muskarac add foreign key (prijatelj) references prijatelj(id);

# zadaci

# 1. Kreirati funkciju zadatak1 koja osigurava kako cjelobrojni tipovi podataka moraju biti između 1076 i 4697
# (7). Primjeniti funkciju u minimalno jednom upitu u proceduri ili okidaču (7).


DELIMITER $$
create function zadatak1(cijeliBroj INT) returns INT
begin 
	if (cijeliBroj > 1076 and cijeliBroj < 4697) then return cijeliBroj;
	else return null;
	end if;
end
$$
DELIMITER ;	

INSERT INTO prijatelj
(gustoca, suknja, asocijalno, majica, prstena)
VALUES(NULL, 'Bijela', 0, NULL, zadatak1(1250));

select * from prijatelj;

# 2. Kreirajte proceduru zadatak2 koja unosi 24064 zapisa u tablicu becar (7). Izvesti proceduru jednom tako
# da u tablici bude točno 24064 zapisa (7).

DELIMITER $$
create procedure zadatak2()
begin 
	declare a int default 0;
	while (a < 26064) do
	insert into becar (id,treciputa,ekstroventno)
	values
	(null,now(),1);
	set a = a + 1;
	end while;
end
$$
DELIMITER ;

call zadatak2;

select * from becar;

# 3. Kreirajte okidač zadatak3 nakon insert-a u tablicu becar tako da za svaki unos u tablicu becar napravi po
# dva unosa u tablicu ostavljen (7). Okidač je u funkciji, tablica ostavljen ima dvostruko više zapisa od tablice
# becar (7).


DELIMITER $$
create trigger zadatak3 after insert on becar for each row 
begin 
	insert into ostavljen (id,ekstroventno,bojaociju,nausnica)
	values
	(null,1,'Bijela',zadatak1(1800)),
	(null,1,'Crna',zadatak1(2300));
end
$$
DELIMITER ;

select * from ostavljen;
select * from becar;

insert into becar (id,maraka,treciputa,ekstroventno,nausnica)
values
(null,null,now(),1,null);

# 4. Kreirajte proceduru zadatak4 koja iz tablice becar zbraja svaku 8 vrijednost id-a (1,8,16,...). U tablicu
# muskarac se unosi broj zapisa koji odgovaraju izračunatoj sumi (7). Izvesti proceduru jednom tako da u
# tablici muskarac bude točan broj zapisa koji odgovaraju sumi odabranih brojeva (8).