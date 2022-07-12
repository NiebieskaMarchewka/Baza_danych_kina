Create database Kino;

use Kino;

Create table Klient
(
ID integer primary key not null auto_increment,
Imie varchar(20) not null,
Nazwisko varchar(30) not null,
Telefon char(9)not null,
Mail varchar(50) not null
);

Create table Sala
(
ID tinyint primary key not null auto_increment,
Nazwa varchar(10) not null,
Liczba_miejsc tinyint not null
);

Create table Rodzaj_biletu
(
ID integer primary key not null auto_increment,
Nazwa varchar(20) not null,
Cena float not null
);

Create table Film
(
ID integer primary key not null auto_increment,
Tytul varchar(255) not null,
Czas_trwania time not null
);

Create table Seans
(
ID integer primary key not null auto_increment,
Sala_ID tinyint not null,
Film_ID integer not null,
Dzien date not null,
Godzina_od time not null,
Godzina_do time not null,
constraint sala_na_seans foreign key (Sala_ID) references Sala(ID),
constraint film_na_seans foreign key (Film_ID) references Film(ID)
);

Create table Miejsce
(
ID integer primary key not null auto_increment,
Seans_ID integer not null,
Rzad tinyint not null,
Kolumna tinyint not null,
Czy_wolne bool not null default true,
unique key (Seans_ID, Rzad, Kolumna),
constraint miejsce_na_seans foreign key (Seans_ID) references Seans(ID)
);

Create table Rezerwacja
(
ID integer primary key not null auto_increment,
Klient_ID integer not null,
constraint wybrane_rezerwacje foreign key (Klient_ID) references Klient(ID)
);

Create table Bilet
(
ID integer primary key not null auto_increment,
Rezerwacja_ID integer not null,
Rodzaj_biletu_ID integer not null,
Seans_ID integer not null,
Miejsce_ID integer not null,
constraint wybrane_bilety foreign key (Rezerwacja_ID) references Rezerwacja(ID),
constraint wybrany_rodzaj_biletu foreign key (Rodzaj_biletu_ID) references Rodzaj_biletu(ID),
constraint wybrany_seans foreign key (Seans_ID) references Seans(ID),
constraint wybrane_miejsce foreign key (Miejsce_ID) references Miejsce(ID),
unique key (Seans_ID, Miejsce_ID)
);


