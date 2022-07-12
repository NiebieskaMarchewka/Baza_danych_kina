
insert into Bilet
(Rezerwacja_ID, Rodzaj_biletu_ID, Seans_ID, Miejsce_ID)
values
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=1)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=2)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=3)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=4)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=5)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=6)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=7)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=8)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=9)),
(1, 2, 3, (select ID from miejsce where Seans_ID=3 and rzad=5 and kolumna=10)),

(2, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=6 and kolumna=5)),
(2, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=6 and kolumna=6)),

(3, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=10 and kolumna=3)),
(3, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=10 and kolumna=4)),
(3, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=10 and kolumna=5)),
(3, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=10 and kolumna=7)),
(3, 1, 3, (select ID from miejsce where Seans_ID=3 and rzad=10 and kolumna=6)),

(4, 1, 14, (select ID from miejsce where Seans_ID=14 and rzad=10 and kolumna=5)),
(4, 1, 14, (select ID from miejsce where Seans_ID=14 and rzad=10 and kolumna=4)),
(4, 1, 14, (select ID from miejsce where Seans_ID=14 and rzad=10 and kolumna=6)),

(5, 1, 12, (select ID from miejsce where Seans_ID=12 and rzad=7 and kolumna=5)),
(5, 1, 12, (select ID from miejsce where Seans_ID=12 and rzad=7 and kolumna=6)),

(6, 1, 11, (select ID from miejsce where Seans_ID=11 and rzad=8 and kolumna=5)),
(6, 1, 11, (select ID from miejsce where Seans_ID=11 and rzad=8 and kolumna=4)),
(6, 1, 11, (select ID from miejsce where Seans_ID=11 and rzad=8 and kolumna=6)),
(6, 1, 11, (select ID from miejsce where Seans_ID=11 and rzad=8 and kolumna=7)),

(7, 2, 6, (select ID from miejsce where Seans_ID=6 and rzad=7 and kolumna=3)),
(7, 2, 6, (select ID from miejsce where Seans_ID=6 and rzad=7 and kolumna=4)),
(7, 2, 6, (select ID from miejsce where Seans_ID=6 and rzad=7 and kolumna=5)),
(7, 2, 6, (select ID from miejsce where Seans_ID=6 and rzad=7 and kolumna=6)),
(7, 2, 6, (select ID from miejsce where Seans_ID=6 and rzad=7 and kolumna=7)),

(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=1)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=2)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=3)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=4)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=5)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=6)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=7)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=8)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=9)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=7 and kolumna=10)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=1)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=2)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=3)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=4)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=5)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=6)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=7)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=8)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=9)),
(8, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=6 and kolumna=10)),

(9, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=8 and kolumna=5)),
(9, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=8 and kolumna=6)),

(10, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=8 and kolumna=4)),
(10, 2, 1, (select ID from miejsce where Seans_ID=1 and rzad=8 and kolumna=3))



;



update miejsce
set Czy_wolne=false where ID in(select Miejsce_ID from Bilet);