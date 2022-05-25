# baza podataka za firmu
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_Unos_podataka\firma\firma.sql

drop database if exists firma;
create database firma default charset utf8mb4;
use firma;

create table projekt (
    sifra  int not null primary key auto_increment,
    naziv  varchar(50),
    cijena decimal(18,2)
);

create table programer (
    sifra         int not null primary key auto_increment,
    ime           varchar(50) not null,
    prezime       varchar(50) not null,
    datum_rodenja datetime,
    placa         decimal(18,2)
);

create table sudjeluje (
    sifra         int not null primary key auto_increment,
    projekt       int not null,
    programer     int not null,
    datum_pocetka datetime not null,
    datum_kraja   datetime   
);

# definiranje vanjskih ključeva

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);

# unos podataka u tablicu projekt

insert into projekt (naziv,cijena)
values ('Aplikacija','10000kn');
insert into projekt (naziv,cijena)
values ('Web-shop',15000);
insert into projekt (naziv,cijena)
values ('Web-stranica',20000);
insert into projekt (naziv,cijena)
values('Tečaj programiranja',7500);


# unos podataka u tablicu programer (ime,prezime)

insert into programer (ime,prezime,datum_rodenja,placa)
values ('Antonio','Majer','1991-01-01',10000);
insert into programer (ime,prezime,datum_rodenja,placa)
values ('Ante','Bikić','1992-01-02',9500);
insert into programer (ime,prezime,datum_rodenja,placa)
values ('Antonio','Vuletić','1993-01-03',9000);
insert into programer (ime,prezime,datum_rodenja,placa)
values ('Antun','Rukavina','1994-01-04',8500);


# unos podataka u tablicu sudjeluje

insert into sudjeluje (projekt,programer,datum_pocetka,datum_kraja)
values (1,1,'2022-05-11','2022-06-10');
insert into sudjeluje (projekt,programer,datum_pocetka,datum_kraja)
values (1,4,'2022-05-11','2022-06-10');
insert into sudjeluje (projekt,programer,datum_pocetka,datum_kraja)
values (2,2,'2022-05-11','2022-06-10');
insert into sudjeluje (projekt,programer,datum_pocetka,datum_kraja)
values (2,3,'2022-05-11','2022-06-10');
insert into sudjeluje (projekt,programer,datum_pocetka,datum_kraja)
values (2,4,'2022-05-11','2022-06-10');
