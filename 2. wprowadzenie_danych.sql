use kino;


insert into Klient 
(Imie, Nazwisko, Telefon, Mail)
values
('Marcin', 'Woźniak', '123456789', 'm.wozniak@gmail.com'),
('Cezary', 'Żak', '234567890', 'c.zak@pollub.pl'),
('Sylwia', 'Dubiel', '758526784', 's.dubiel@pullub.pl'),
('Bohdan' ,'Kosharnyi' ,'784626580' ,'b.kosharnyi@gmail.com'),
('Martyna' ,'Kalinka' ,'200300400' ,'m.kalinka@gmail.com'),
('Wiktoria' ,'Bielak' ,'352321345' ,'w.bielak@gmail.com'),
('Faustyna' ,'Smarzewska' ,'123321456' ,'f.smarz@gmail.com'),
('Aleh' ,'Kryshchuk' ,'345543678' ,'a.kry@gmail.com'),
('Maciej' ,'Nastaj' ,'321456987' ,'m.na@gmail.com'),
('Karol' ,'Warmiński' ,'476678890' ,'k.warm@gmail.com')
;

insert into Sala
(Nazwa, Liczba_miejsc)
values
('Sala A', 100),
('Sala B', 100),
('Sala C', 100),
('Sala D', 100),
('Sala E', 100),
('Sala F', 100)
;

insert into Rodzaj_biletu
(Nazwa, Cena)
values
('Normalny', 20.00),
('Ulgowy', 15.00)
;

Insert into Film
(Tytul, Czas_trwania)
values
('Diuna', '03:00:00'),
('Dziewczyny z Dubaju', '03:00:00'),
('Dom Gucci', '03:00:00'),
('Koniec świata, czyli Kogel Mogel 4', '02:00:00'),
('Krzyk', '02:30:00'),
('Gierek', '03:00:00'),
('Batman', '03:30:00'),
('Uncharted', '2:00:00'),
('Moonfall', '2:30:00'),
('Najgorszy człowiek na świecie', '2:30:00')
;

insert into Seans
(Sala_ID, Film_ID, Dzien, Godzina_od, Godzina_do)
values
((select ID from Sala where Nazwa='Sala A'), (select ID from film where Tytul='Diuna'), '2022-02-01', '14:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Diuna')),
((select ID from Sala where Nazwa='Sala A'), (select ID from film where Tytul='Diuna'), '2022-02-01', '17:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Diuna')),
((select ID from Sala where Nazwa='Sala A'), (select ID from film where Tytul='Diuna'), '2022-02-01', '20:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Diuna')),
((select ID from Sala where Nazwa='Sala A'), (select ID from film where Tytul='Diuna'), '2022-02-02', '14:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Diuna')),
((select ID from Sala where Nazwa='Sala A'), (select ID from film where Tytul='Diuna'), '2022-02-02', '17:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Diuna')),
((select ID from Sala where Nazwa='Sala A'), (select ID from film where Tytul='Diuna'), '2022-02-02', '20:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Diuna')),
((select ID from Sala where Nazwa='Sala B'), (select ID from film where Tytul='Dom Gucci'), '2022-02-01', '14:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Dom Gucci')),
((select ID from Sala where Nazwa='Sala B'), (select ID from film where Tytul='Dom Gucci'), '2022-02-01', '17:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Dom Gucci')),
((select ID from Sala where Nazwa='Sala B'), (select ID from film where Tytul='Krzyk'), '2022-02-01', '20:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Krzyk')),
((select ID from Sala where Nazwa='Sala B'), (select ID from film where Tytul='Dom Gucci'), '2022-02-02', '14:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Dom Gucci')),
((select ID from Sala where Nazwa='Sala B'), (select ID from film where Tytul='Dom Gucci'), '2022-02-02', '17:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Dom Gucci')),
((select ID from Sala where Nazwa='Sala B'), (select ID from film where Tytul='Krzyk'), '2022-02-02', '20:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Krzyk')),
((select ID from Sala where Nazwa='Sala C'), (select ID from film where Tytul='Koniec świata, czyli Kogel Mogel 4'), '2022-02-01', '15:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Koniec świata, czyli Kogel Mogel 4')),
((select ID from Sala where Nazwa='Sala C'), (select ID from film where Tytul='Koniec świata, czyli Kogel Mogel 4'), '2022-02-01', '17:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Koniec świata, czyli Kogel Mogel 4')),
((select ID from Sala where Nazwa='Sala C'), (select ID from film where Tytul='Koniec świata, czyli Kogel Mogel 4'), '2022-02-01', '19:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Koniec świata, czyli Kogel Mogel 4')),
((select ID from Sala where Nazwa='Sala C'), (select ID from film where Tytul='Koniec świata, czyli Kogel Mogel 4'), '2022-02-02', '15:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Koniec świata, czyli Kogel Mogel 4')),
((select ID from Sala where Nazwa='Sala C'), (select ID from film where Tytul='Koniec świata, czyli Kogel Mogel 4'), '2022-02-02', '17:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Koniec świata, czyli Kogel Mogel 4')),
((select ID from Sala where Nazwa='Sala C'), (select ID from film where Tytul='Koniec świata, czyli Kogel Mogel 4'), '2022-02-02', '19:00:00', Godzina_od + (select Czas_trwania from Film where Tytul='Koniec świata, czyli Kogel Mogel 4'))
;

Insert into Rezerwacja
(Klient_ID)
values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)
;