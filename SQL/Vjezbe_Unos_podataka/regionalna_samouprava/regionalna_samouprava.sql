# baza podataka za zupaniju i opcinu
# naredba za izvođenje
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\antun\OneDrive\Dokumenti\GitHub\Vjezbe\SQL\Vjezbe_Unos_podataka\regionalna_samouprava.sql

drop database if exists regionalna_samouprava;
create database regionalna_samouprava default charset utf8mb4;
use regionalna_samouprava;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan varchar(50)
);

create table opcina (
    sifra    int not null primary key auto_increment,
    zupanija int not null,
    naziv    varchar(50)
);

# definiranje vanjskih ključeva

alter table opcina add foreign key (zupanija) references zupanija(sifra);

# unos podataka

insert into zupanija (naziv)
values ('Osječko-baranjska');

insert into zupanija (naziv)
values ('Dubrovačko-neretvanska');

insert into zupanija (naziv,zupan)
values ('Zagrebačka','Antun Rukavina');

insert into opcina (zupanija,naziv)
values (1,'Vuka');

insert into opcina (zupanija,naziv)
values (1,'Tenja');

insert into opcina (zupanija,naziv)
values (2, 'Ploče');

insert into opcina (zupanija,naziv)
values (2, 'Metković');

insert into opcina (zupanija,naziv)
values (3, 'Dubrava');

insert into opcina (zupanija,naziv)
values (3, 'Sesvete');
