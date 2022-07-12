create view Cały_repertuar
as
select Tytul 'Tytuł filmu', Sala.Nazwa 'Nazwa sali',  Dzien 'Dzień seansu', Godzina_od 'Początek seansu', Godzina_do 'Przybliżony koniec seansu'
from Sala, Film, Seans
where Sala.ID=Sala_ID and Film.ID=Film_ID
order by Dzien, Godzina_od, Sala_ID;

CREATE VIEW Diuna_repertuar AS
select Tytul 'Tytuł filmu', Sala.Nazwa 'Nazwa sali',  Dzien 'Dzień seansu', Godzina_od 'Początek seansu', Godzina_do 'Przybliżony koniec seansu'
from Sala, Film, Seans
where Sala.ID=Sala_ID and Film.ID=Film_ID and Tytul='Diuna';

CREATE VIEW Kogel_mogel_repertuar AS
select Tytul 'Tytuł filmu', Sala.Nazwa 'Nazwa sali',  Dzien 'Dzień seansu', Godzina_od 'Początek seansu', Godzina_do 'Przybliżony koniec seansu'
from Sala, Film, Seans
where Sala.ID=Sala_ID and Film.ID=Film_ID and Tytul='Koniec świata, czyli Kogel Mogel 4';