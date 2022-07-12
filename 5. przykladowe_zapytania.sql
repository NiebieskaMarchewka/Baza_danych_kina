select Tytul 'Tytuł filmu', Sala.Nazwa 'Nazwa sali',  Dzien 'Dzień seansu', Godzina_od 'Początek seansu', Godzina_do 'Przybliżony koniec seansu'
from Sala, Film, Seans
where Sala.ID=Sala_ID and Film.ID=Film_ID and Dzien<'2022-02-03'
order by Dzien, Godzina_od, Sala_ID;

select Tytul 'Tytuł filmu', Sala.Nazwa 'Nazwa sali',  Dzien 'Dzień seansu', Godzina_od 'Początek seansu', Godzina_do 'Przybliżony koniec seansu'
from Sala, Film, Seans
where Sala.ID=Sala_ID and Film.ID=Film_ID and Dzien<'2022-02-03' and Tytul='Diuna'
order by Dzien, Godzina_od, Sala_ID;

select Rzad 'Rząd', Kolumna 'Miejsce' 
from Miejsce 
where Seans_ID= (select Seans.ID from Seans, Film where Dzien='2022-02-01' and Godzina_od='20:00:00' and Film_ID=Film.ID and Tytul='Diuna') and Czy_wolne=true 
order by Rzad, Kolumna;

select Seans.ID 'ID seansu' , Rzad 'Rząd', Kolumna 'Miejsce', Bilet.ID 'ID biletu'
from Miejsce, Bilet, Rezerwacja, Klient, Seans 
where Imie='Marcin' and Nazwisko='Woźniak' and Klient.ID=Klient_ID and Rezerwacja.ID=Rezerwacja_ID and Miejsce.ID=Miejsce_ID and Bilet.Seans_ID=Seans.ID
order by Rzad, Kolumna;

select Seans.ID 'ID seansu', Godzina_od 'Początek seansu', Godzina_do 'Koniec Seansu'
from Seans, Sala
where Dzien='2022-02-01' and Sala_ID=Sala.ID and Nazwa='Sala A';

Select distinct Imie 'Imię', Nazwisko 'Nazwisko', Telefon 'Numer telefonu', Mail 'Adres e-mail'
from Klient, Rezerwacja, Bilet, Seans, Film
where Tytul='Diuna' and Film_ID=Film.ID and Dzien='2022-02-01' and Godzina_od='20:00:00' and Seans.ID=Seans_ID and Rezerwacja.ID=Rezerwacja_ID and Klient.ID=Klient_ID;