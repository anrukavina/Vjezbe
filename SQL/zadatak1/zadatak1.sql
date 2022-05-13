# unijeti 3 županije, 6 općina, 12 mjesta, 3 župana
# promijeniti 5 mjesta
# obrisati 2 općine
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\zadatak1\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1 default charset utf8mb4;
use zadatak1;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int
);

create table zupan (
    sifra   int not null primary key auto_increment,
    ime     varchar(50) not null,
    prezime varchar(50) not null
);

create table opcina (
    sifra    int not null primary key auto_increment,
    zupanija int,
    naziv    varchar(50)
);

create table mjesto (
    sifra  int not null primary key auto_increment,
    opcina int,
    naziv  varchar(50)
);

# definiranje vanjskih ključeva

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

# unos podataka

# unos 3 župana

insert into zupan (ime,prezime)
values ('Antonija','Jozić');
insert into zupan (ime,prezime)
values ('Danijel','Marušić');
insert into zupan (ime,prezime)
values ('Ivan','Anušić');

# unos 3 županije

insert into zupanija (naziv,zupan)
values ('Požeško-slavonska',1);
insert into zupanija (naziv,zupan)
values ('Brodsko-posavska',2);
insert into zupanija (naziv,zupan)
values ('Osječko-baranjska',3);

# unos 6 općina

insert into opcina (naziv,zupanija)
values ('Pleternica',1);
insert into opcina (naziv,zupanija)
values ('Jakšić',1);
insert into opcina (naziv,zupanija)
values ('Vrpolje',2);
insert into opcina (naziv,zupanija)
values ('Rešetari',2);
insert into opcina (naziv,zupanija)
values ('Podgorač',3);
insert into opcina (naziv,zupanija)
values ('Bizovac',3);

# unos 12 mjesta

insert into mjesto (naziv,opcina)
values ('Zagrađe',1);
insert into mjesto (naziv,opcina)
values ('Bresnica',1);
insert into mjesto (naziv,opcina)
values ('Eminovci',2);
insert into mjesto (naziv,opcina)
values ('Rajsavac',2);
insert into mjesto (naziv,opcina)
values ('Čajkovci',3);
insert into mjesto (naziv,opcina)
values ('Stari Perkovci',3);
insert into mjesto (naziv,opcina)
values ('Brđani',4);
insert into mjesto (naziv,opcina)
values ('Zapolje',4);
insert into mjesto (naziv,opcina)
values ('Poganovci',5);
insert into mjesto (naziv,opcina)
values ('Stipanovci',5);
insert into mjesto (naziv,opcina)
values ('Cret Bizovački',6);
insert into mjesto (naziv,opcina)
values ('Samatovci',6);


