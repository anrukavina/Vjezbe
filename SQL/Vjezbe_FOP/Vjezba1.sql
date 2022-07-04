# naredba za izvođenje:
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_FOP\Vjezba1.sql

drop database if exists Vjezba1;
create database Vjezba1 default charset utf8mb4;
use Vjezba1;

create table muskarac (
    id int(11) not null primary key auto_increment,
    maraka decimal(17,7) not null,
    hlace varchar(45) not null,
    prstena int(11) not null,
    nausnica int(11),
    neprijateljica int(11) not null
);

create table neprijateljica (
    id int(11) not null primary key auto_increment,
    indiferentno tinyint(1) not null,
    modelnaocala varchar(39) not null,
    maraka decimal(12,10) not null,
    kratkamajica varchar(32) not null,
    ogrlica int(11)
);

create table sestra (
    id int(11) not null primary key auto_increment,
    introvertno tinyint(1) not null,
    carape varchar(41),
    suknja varchar(40),
    narukvica int(11) not null
);

create table punac (
    id int(11) not null primary key auto_increment,
    modelnaocala varchar(39),
    treciputa datetime,
    drugiputa datetime,
    novcica decimal(14,6) not null,
    narukvica int(11)
);

create table zarucnica (
    id int(11) not null primary key auto_increment,
    stilfrizura varchar(40),
    prstena int(11) not null,
    gustoca decimal(14,5),
    modelnaocala varchar(35) not null,
    nausnica int(11) not null
);

# veze

alter table muskarac add foreign key (neprijateljica) references neprijateljica(id);

# zadaci

# 1. Kreirati funkciju zadatak1 koja osigurava kako cjelobrojni tipovi podataka moraju biti između 980 i 5098
# (7). Primjeniti funkciju u minimalno jednom upitu u proceduri ili okidaču (7).

DELIMITER $$
create function zadatak1(cijeliBroj INT) returns INT
begin
	if (cijeliBroj > 980 and cijeliBroj < 5098) then 
	return cijeliBroj;
	else
	return null;
	end if;
end
$$
DELIMITER ;

insert into sestra (id,introvertno,carape,suknja,narukvica)
values 
(null,1,null,null,zadatak1(990));


# 2. Kreirajte proceduru zadatak2 koja unosi 56872 zapisa u tablicu zarucnica (7). Izvesti proceduru jednom
# tako da u tablici bude točno 56872 zapisa (7).

DELIMITER $$
create procedure zadatak2()
begin
	declare a INT default 0;
	while (a < 56872) do
	insert into zarucnica 
	(id,prstena,modelnaocala,nausnica)
	values
	(null,zadatak1(1000), 'Ray Ban', zadatak1(1000));
	set a=a+1;
	end while;
end
$$
DELIMITER ;

call zadatak2;

select * from zarucnica;


# 3. Kreirajte okidač zadatak3 nakon insert-a u tablicu zarucnica tako da za svaki unos u tablicu zarucnica
# napravi po dva unosa u tablicu punac (7). Okidač je u funkciji, tablica punac ima dvostruko više zapisa od
# tablice zarucnica (7).

DELIMITER $$
create trigger zadatak3 after insert on zarucnica for each row
begin 
	insert into punac (id, novcica)
	values
	(null,34.444),
	(null,41.222);
end
$$
DELIMITER ;

select * from zarucnica;
select * from punac;

INSERT INTO zarucnica
(stilfrizura, prstena, gustoca, modelnaocala, nausnica)
VALUES(NULL, 23, NULL, 'Ray-Ban', 13);


# 4. Kreirajte proceduru zadatak4 koja iz tablice zarucnica zbraja svaku 7 vrijednost id-a (1,7,14,...). U tablicu
# muskarac se unosi broj zapisa koji odgovaraju izračunatoj sumi (7). Izvesti proceduru jednom tako da u
# tablici muskarac bude točan broj zapisa koji odgovaraju sumi odabranih brojeva (8).

DELIMITER $$
create procedure zadatak4
begin
	DECLARE a INT DEFAULT 0;
    DECLARE b INT DEFAULT 0;
    DECLARE c INT DEFAULT 1;
    DECLARE d INT DEFAULT 0;
    WHILE (a < brojRedova) DO
    SET a = a + 1;
    SET b = b + 1;
    IF (b = 7) THEN
    SET b = 0;
    SET c = c + a;
    END IF;
    END WHILE;
    IF (a = brojRedova) THEN
    WHILE (d < c) DO
    INSERT INTO muskarac
    (id, maraka, hlace, prstena, neprijateljica)
    VALUES
    (NULL, 12.2, 'Domaće', zadatak1(1200), 1);
    SET d = d + 1;
    END WHILE;
    END IF;	
end
$$
DELIMITER ; 
end

# call zadatak4(56872);