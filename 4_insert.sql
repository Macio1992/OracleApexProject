--Autor: Maciej Zbierowski
insert into ADRES_NAUCZYCIELA (id_adres, ulica, nr_ulicy, nr_mieszkania, kod_pocztowy, miasto) values(1, 'Wesola', 56, 100, '12-340', 'Warszawa');
insert into ADRES_NAUCZYCIELA (id_adres, ulica, nr_ulicy, nr_mieszkania, kod_pocztowy, miasto) values(2, 'Radosna', 23, 54, '67-231', 'Gdansk');
insert into ADRES_NAUCZYCIELA (id_adres, ulica, nr_ulicy, nr_mieszkania, kod_pocztowy, miasto) values(3, 'Cicha', 78, 78, '13-100', 'Torun');
insert into ADRES_NAUCZYCIELA (id_adres, ulica, nr_ulicy, nr_mieszkania, kod_pocztowy, miasto) values(4, 'Nadolna', 12, 2, '14-098', 'Gdynia');
insert into ADRES_NAUCZYCIELA (id_adres, ulica, nr_ulicy, nr_mieszkania, kod_pocztowy, miasto) values(5, 'Miejska', 32, 90, '87-091', 'Gdansk');
insert into ADRES_NAUCZYCIELA (id_adres, ulica, nr_ulicy, nr_mieszkania, kod_pocztowy, miasto) values(6, 'Grunwaldzka',89, 45, '23-109', 'Sopot');

insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(1, 'Piotr', 'Wyrzyszkowski', TO_DATE ('1987-09-08', 'YYYY/MM/DD'), TO_DATE ('2001-01-09', 'YYYY/MM/DD'), 4, '87010923451', 0);
insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(2, 'Anna', 'Klinicka', TO_DATE ('1985-09-11', 'YYYY/MM/DD'), TO_DATE ('2000-01-09', 'YYYY/MM/DD'), 2,'90090923451', 0);
insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(3, 'Marcin', 'Nadrobny', TO_DATE ('1973-03-30', 'YYYY/MM/DD'), TO_DATE ('2004-01-29', 'YYYY/MM/DD'),6, '73033023451', 0);
insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(3, 'Marcin', 'Nadrobny', TO_DATE ('1973-03-30', 'YYYY/MM/DD'), TO_DATE ('2004-01-29', 'YYYY/MM/DD'),6, '73033023451', 0);
insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(4, 'Dorota', 'Krzakowski', TO_DATE ('1980-04-23', 'YYYY/MM/DD'), TO_DATE ('2009-05-23', 'YYYY/MM/DD'), 3, '80042323451', 0);
insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(5, 'Maria', 'Zbierna', TO_DATE ('1978-02-09', 'YYYY/MM/DD'), TO_DATE ('2009-01-08', 'YYYY/MM/DD'), 1, '78020823451', 0);
insert into nauczyciel(ID_NAUCZYCIEL, IMIE, NAZWISKO, DATA_URODZENIA, DATA_ZATRUDNIENIA, ID_ADRES, PESEL, CZY_AWANS) values(6, 'Marek', 'Kochany', TO_DATE ('1981-11-02', 'YYYY/MM/DD'), TO_DATE ('2007-04-04', 'YYYY/MM/DD'), 5, '81110223451', 0);

insert into ADRES_STUDENTA(ID_ADRES, ULICA, NR_ULICY, NR_MIESZKANIA, KOD_POCZTOWY, MIASTO) values(1, 'Dawna', 12, 67, '34-678', 'Sopot');
insert into ADRES_STUDENTA(ID_ADRES, ULICA, NR_ULICY, NR_MIESZKANIA, KOD_POCZTOWY, MIASTO) values(2, 'Dzisiejsza', 78, 12, '45-890', 'Wroclaw');
insert into ADRES_STUDENTA(ID_ADRES, ULICA, NR_ULICY, NR_MIESZKANIA, KOD_POCZTOWY, MIASTO) values(3, 'Jutrzejsza', 45, 213, '20-009', 'Koszalin');
insert into ADRES_STUDENTA(ID_ADRES, ULICA, NR_ULICY, NR_MIESZKANIA, KOD_POCZTOWY, MIASTO) values(4, 'Codzienna', 17, 7, '35-780', 'Olsztyn');
insert into ADRES_STUDENTA(ID_ADRES, ULICA, NR_ULICY, NR_MIESZKANIA, KOD_POCZTOWY, MIASTO) values(5, 'Niewielka', 81, 29, '21-333', 'Tczew');
insert into ADRES_STUDENTA(ID_ADRES, ULICA, NR_ULICY, NR_MIESZKANIA, KOD_POCZTOWY, MIASTO) values(6, 'Poranna', 55, 203, '16-090', 'Maruzki');

insert into wydzial (ID_WYDZIAL, NAZWA, ILOSC_KIERUNKOW) values(1, 'Techniczny', 2);
insert into wydzial (ID_WYDZIAL, NAZWA, ILOSC_KIERUNKOW) values(2, 'Humanistyczny', 2);
insert into wydzial (ID_WYDZIAL, NAZWA, ILOSC_KIERUNKOW) values(3, 'Przyrodniczy', 2);

insert into kierunek (ID_KIERUNEK, NAZWA, TRYB, ID_WYDZIAL) values(1, 'Informatyka', 's', 1);
insert into kierunek (ID_KIERUNEK, NAZWA, TRYB, ID_WYDZIAL) values(2, 'Matematyka', 'n', 1);
insert into kierunek (ID_KIERUNEK, NAZWA, TRYB, ID_WYDZIAL) values(3, 'Filologia polska', 's', 2);
insert into kierunek (ID_KIERUNEK, NAZWA, TRYB, ID_WYDZIAL) values(4, 'Filozofia', 'n', 2);
insert into kierunek (ID_KIERUNEK, NAZWA, TRYB, ID_WYDZIAL) values(5, 'Biologia', 'n', 3);
insert into kierunek (ID_KIERUNEK, NAZWA, TRYB, ID_WYDZIAL) values(6, 'Chemia', 's', 3);

insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(1, 1, 1);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(2, 2, 1);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(3, 1, 2);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(4, 2, 2);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(5, 1, 3);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(6, 2, 3);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(7, 1, 4);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(8, 2, 4);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(9, 1, 5);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(10, 2, 5);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(11, 1, 6);
insert into rok(ID_ROK, NUMER, ID_KIERUNEK) values(12, 2, 6);

insert into grupa (ID_GRUPA, NAZWA, LIMIT_OSOB, ID_ROK, ID_NAUCZYCIEl) values(1, '1a', 30, 1, 4);
insert into grupa (ID_GRUPA, NAZWA, LIMIT_OSOB, ID_ROK, ID_NAUCZYCIEl) values(2, '3b', 25, 2, 1);
insert into grupa (ID_GRUPA, NAZWA, LIMIT_OSOB, ID_ROK, ID_NAUCZYCIEl) values(3, '3a', 26, 2, 2);
insert into grupa (ID_GRUPA, NAZWA, LIMIT_OSOB, ID_ROK, ID_NAUCZYCIEl) values(4, '1b', 30, 1, 3);
insert into grupa (ID_GRUPA, NAZWA, LIMIT_OSOB, ID_ROK, ID_NAUCZYCIEl) values(5, '2a', 25, 3, 5);
insert into grupa (ID_GRUPA, NAZWA, LIMIT_OSOB, ID_ROK, ID_NAUCZYCIEl) values(6, '2b', 27, 3, 6);

insert into student (id_student, imie, nazwisko, data_urodzenia, pesel, id_grupa, id_adres) values (1, 'Karol', 'Sosenny', TO_DATE ('1991-08-07', 'YYYY/MM/DD'),  '91080728767', 1, 1);
insert into student (id_student, imie, nazwisko, data_urodzenia, pesel, id_grupa, id_adres) values (2, 'Marianna', 'Konieczna', TO_DATE ('1992-03-17', 'YYYY/MM/DD'), '92031728767', 2, 2);
insert into student (id_student, imie, nazwisko, data_urodzenia, pesel, id_grupa, id_adres) values (3, 'Tomasz', 'Dorobny', TO_DATE ('1992-05-21', 'YYYY/MM/DD'),'92052128767', 3, 3);
insert into student (id_student, imie, nazwisko, data_urodzenia, pesel, id_grupa, id_adres) values (4, 'Maciej', 'Matczyny', TO_DATE ('1992-11-17', 'YYYY/MM/DD'),'92111728767', 4, 4);
insert into student (id_student, imie, nazwisko, data_urodzenia, pesel, id_grupa, id_adres) values (5, 'Piotr', 'Nieciekawy', TO_DATE ('1991-12-12', 'YYYY/MM/DD'), '91090128767', 5, 5);
insert into student (id_student, imie, nazwisko, data_urodzenia, pesel, id_grupa, id_adres) values (6, 'Jacek', 'Boski', TO_DATE ('1991-01-01', 'YYYY/MM/DD'), '91010128767', 6, 6);

insert into przedmiot (ID_PRZEDMIOT, NAZWA, ILOSC_GODZIN, ID_STUDENT, ID_NAUCZYCIEL) values(1, 'Matematyka Dyskretna', 60, 1, 1);
insert into przedmiot (ID_PRZEDMIOT, NAZWA, ILOSC_GODZIN, ID_STUDENT, ID_NAUCZYCIEL) values(2, 'Metody obliczeniowe', 60, 2, 4);
insert into przedmiot (ID_PRZEDMIOT, NAZWA, ILOSC_GODZIN, ID_STUDENT, ID_NAUCZYCIEL) values(3, 'Badanie kodu DNA', 60, 3, 5);
insert into przedmiot (ID_PRZEDMIOT, NAZWA, ILOSC_GODZIN, ID_STUDENT, ID_NAUCZYCIEL) values(4, 'Filozfia matematyki', 60, 4, 6);
insert into przedmiot (ID_PRZEDMIOT, NAZWA, ILOSC_GODZIN, ID_STUDENT, ID_NAUCZYCIEL) values(5, 'Algorytmika grafowa', 60, 6, 3);
insert into przedmiot (ID_PRZEDMIOT, NAZWA, ILOSC_GODZIN, ID_STUDENT, ID_NAUCZYCIEL) values(6, 'Programowanie', 60, 5, 2);

INSERT INTO WARUNEK(ID_WARUNEK, id_student, id_przedmiot) VALUES(1, 1, 4);
INSERT INTO WARUNEK(ID_WARUNEK, id_student, id_przedmiot) VALUES(2, 2, 3);
INSERT INTO WARUNEK(ID_WARUNEK, id_student, id_przedmiot) VALUES(3, 3, 1);
INSERT INTO WARUNEK(ID_WARUNEK, id_student, id_przedmiot) VALUES(4, 4, 5);
INSERT INTO WARUNEK(ID_WARUNEK, id_student, id_przedmiot) VALUES(5, 5, 2);
INSERT INTO WARUNEK(ID_WARUNEK, id_student, id_przedmiot) VALUES(6, 6, 6);

INSERT INTO REPETA(ID_REPETA, id_student, id_przedmiot) VALUES(1, 1, 2);
INSERT INTO REPETA(ID_REPETA, id_student, id_przedmiot) VALUES(2, 2, 4);
INSERT INTO REPETA(ID_REPETA, id_student, id_przedmiot) VALUES(3, 3, 1);
INSERT INTO REPETA(ID_REPETA, id_student, id_przedmiot) VALUES(4, 4, 3);
INSERT INTO REPETA(ID_REPETA, id_student, id_przedmiot) VALUES(5, 5, 6);
INSERT INTO REPETA(ID_REPETA, id_student, id_przedmiot) VALUES(6, 6, 5);

insert into egzaminator (ID_EGZAMINATOR, ID_NAUCZYCIEL) values (1, 2);
insert into egzaminator (ID_EGZAMINATOR, ID_NAUCZYCIEL) values (2, 5);
insert into egzaminator (ID_EGZAMINATOR, ID_NAUCZYCIEL) values (3, 6);
insert into egzaminator (ID_EGZAMINATOR, ID_NAUCZYCIEL) values (4, 3);
insert into egzaminator (ID_EGZAMINATOR, ID_NAUCZYCIEL) values (5, 1);
insert into egzaminator (ID_EGZAMINATOR, ID_NAUCZYCIEL) values (6, 4);

insert into EGZAMIN (ID_EGZAMIN, DATA_EGZAMINU, ILOSC_PUNKTOW, ID_PRZEDMIOT, ID_EGZAMINATOR) values(1, TO_DATE ('2016-09-09', 'YYYY/MM/DD'), 45, 3, 4);
insert into EGZAMIN (ID_EGZAMIN, DATA_EGZAMINU, ILOSC_PUNKTOW, ID_PRZEDMIOT, ID_EGZAMINATOR) values(2, TO_DATE ('2016-10-08', 'YYYY/MM/DD'), 60,  2, 1);
insert into EGZAMIN (ID_EGZAMIN, DATA_EGZAMINU, ILOSC_PUNKTOW, ID_PRZEDMIOT, ID_EGZAMINATOR) values(3, TO_DATE ('2016-11-21', 'YYYY/MM/DD'), 30, 1, 2);
insert into EGZAMIN (ID_EGZAMIN, DATA_EGZAMINU, ILOSC_PUNKTOW, ID_PRZEDMIOT, ID_EGZAMINATOR) values(4, TO_DATE ('2016-10-17', 'YYYY/MM/DD'), 70, 6, 3);
insert into EGZAMIN (ID_EGZAMIN, DATA_EGZAMINU, ILOSC_PUNKTOW, ID_PRZEDMIOT, ID_EGZAMINATOR) values(5, TO_DATE ('2016-10-08', 'YYYY/MM/DD'), 50, 5, 5);
insert into EGZAMIN (ID_EGZAMIN, DATA_EGZAMINU, ILOSC_PUNKTOW, ID_PRZEDMIOT, ID_EGZAMINATOR) values(6, TO_DATE ('2016-11-01', 'YYYY/MM/DD'), 40, 1, 2);

insert into ODPOWIEDZ_DO_PYTANIA (ID_ODPOWIEDZ, TRESC, CZYPOPRAWNE) values(1, 'Algorytm to kod', 0);
insert into ODPOWIEDZ_DO_PYTANIA (ID_ODPOWIEDZ, TRESC, CZYPOPRAWNE) values(2, 'Definicja', 0);
insert into ODPOWIEDZ_DO_PYTANIA (ID_ODPOWIEDZ, TRESC, CZYPOPRAWNE) values(3, 'Overloading', 0);
insert into ODPOWIEDZ_DO_PYTANIA (ID_ODPOWIEDZ, TRESC, CZYPOPRAWNE) values(4, 'Sposob na algorytm', 0);
insert into ODPOWIEDZ_DO_PYTANIA (ID_ODPOWIEDZ, TRESC, CZYPOPRAWNE) values(5, '1980', 0);
insert into ODPOWIEDZ_DO_PYTANIA (ID_ODPOWIEDZ, TRESC, CZYPOPRAWNE) values(6, 'Narzedzie programistyczne', 0);


insert into PYTANIE_EGZAMINACYJNE (ID_PYTANIE, TRESC, PUNKTY, ID_EGZAMIN, ID_ODPOWIEDZ) values (1, 'Co to jest algorytm?', 40, 1, 1);
insert into PYTANIE_EGZAMINACYJNE (ID_PYTANIE, TRESC, PUNKTY, ID_EGZAMIN, ID_ODPOWIEDZ) values (2, 'Jak sie nadaje wartosci?', 30, 4, 2);
insert into PYTANIE_EGZAMINACYJNE (ID_PYTANIE, TRESC, PUNKTY, ID_EGZAMIN, ID_ODPOWIEDZ) values (3, 'Co to jest przeciazanie?', 50, 1, 3);
insert into PYTANIE_EGZAMINACYJNE (ID_PYTANIE, TRESC, PUNKTY, ID_EGZAMIN, ID_ODPOWIEDZ) values (4, 'Co to jest polimorfizm?', 20, 3, 4);
insert into PYTANIE_EGZAMINACYJNE (ID_PYTANIE, TRESC, PUNKTY, ID_EGZAMIN, ID_ODPOWIEDZ) values (5, 'Kiedy pierwszy komputer?', 30, 5, 5);
insert into PYTANIE_EGZAMINACYJNE (ID_PYTANIE, TRESC, PUNKTY, ID_EGZAMIN, ID_ODPOWIEDZ) values (6, 'Co to jest linker?', 50, 2, 6);

insert into STYPENDIUM (ID_STYPENDIUM, KWOTA, ID_STUDENT) VALUES(1, 500, 3);
insert into STYPENDIUM (ID_STYPENDIUM, KWOTA, ID_STUDENT) VALUES(2, 600, 4);
insert into STYPENDIUM (ID_STYPENDIUM, KWOTA, ID_STUDENT) VALUES(3, 700, 2);
insert into STYPENDIUM (ID_STYPENDIUM, KWOTA, ID_STUDENT) VALUES(4, 1500, 1);
insert into STYPENDIUM (ID_STYPENDIUM, KWOTA, ID_STUDENT) VALUES(5, 600, 3);
insert into STYPENDIUM (ID_STYPENDIUM, KWOTA, ID_STUDENT) VALUES(6, 400, 2);

insert into KONKURS (ID_KONKURS, NAZWA, DATA, WYSOKOSC_NAGRODY, ID_NAUCZYCIEL, ID_STUDENT) values(1, 'Konkurs przyrodniczy', TO_DATE ('2016-12-12', 'YYYY/MM/DD'), 2500, 1, 3);
insert into KONKURS (ID_KONKURS, NAZWA, DATA, WYSOKOSC_NAGRODY, ID_NAUCZYCIEL, ID_STUDENT) values(2, 'Konkurs matematyczny', TO_DATE ('2016-11-11', 'YYYY/MM/DD'), 1500, 4, 2);
insert into KONKURS (ID_KONKURS, NAZWA, DATA, WYSOKOSC_NAGRODY, ID_NAUCZYCIEL, ID_STUDENT) values(3, 'Konkurs humanistyczy', TO_DATE ('2016-10-12', 'YYYY/MM/DD'), 1200, 2, 2);
insert into KONKURS (ID_KONKURS, NAZWA, DATA, WYSOKOSC_NAGRODY, ID_NAUCZYCIEL, ID_STUDENT) values(4, 'Konkurs biologiczy', TO_DATE ('2016-11-12', 'YYYY/MM/DD'), 2500, 3, 2);
insert into KONKURS (ID_KONKURS, NAZWA, DATA, WYSOKOSC_NAGRODY, ID_NAUCZYCIEL, ID_STUDENT) values(5, 'Konkurs programistyczny', TO_DATE ('2016-11-12', 'YYYY/MM/DD'), 2500, 4, 3);
insert into KONKURS (ID_KONKURS, NAZWA, DATA, WYSOKOSC_NAGRODY, ID_NAUCZYCIEL, ID_STUDENT) values(6, 'Konkurs zarzadzania',TO_DATE ('2016-10-12', 'YYYY/MM/DD'), 1500, 2, 2);

insert into ZADANIE_KONKURSOWE (ID_ZADANIE, TRESC, ILOSC_PUNKTOW, ID_KONKURS) VALUES (1, 'Tresc zadania do konkursu 1', 60, 3);
insert into ZADANIE_KONKURSOWE (ID_ZADANIE, TRESC, ILOSC_PUNKTOW, ID_KONKURS) VALUES (2, 'Tresc zadania do konkursu 2', 10, 2);
insert into ZADANIE_KONKURSOWE (ID_ZADANIE, TRESC, ILOSC_PUNKTOW, ID_KONKURS) VALUES (3, 'Tresc zadania do konkursu 3', 60, 4);
insert into ZADANIE_KONKURSOWE (ID_ZADANIE, TRESC, ILOSC_PUNKTOW, ID_KONKURS) VALUES (4, 'Tresc zadania do konkursu 4', 40, 5);
insert into ZADANIE_KONKURSOWE (ID_ZADANIE, TRESC, ILOSC_PUNKTOW, ID_KONKURS) VALUES (5, 'Tresc zadania do konkursu 5', 50, 6);
insert into ZADANIE_KONKURSOWE (ID_ZADANIE, TRESC, ILOSC_PUNKTOW, ID_KONKURS) VALUES (6, 'Tresc zadania do konkursu 6', 80, 1);

insert into lekcja (ID_LEKCJA, TEMAT, ID_NAUCZYCIEL) values (1, 'Wstep do programowania', 3);
insert into lekcja (ID_LEKCJA, TEMAT, ID_NAUCZYCIEL) values (2, 'Nowe metody obliczeniowe', 2);
insert into lekcja (ID_LEKCJA, TEMAT, ID_NAUCZYCIEL) values (3, 'Metoda Fuhrmana', 4);
insert into lekcja (ID_LEKCJA, TEMAT, ID_NAUCZYCIEL) values (4, 'Zarzadzanie malym biznesem', 5);
insert into lekcja (ID_LEKCJA, TEMAT, ID_NAUCZYCIEL) values (5, 'Filozofia matematyki wstep', 4);
insert into lekcja (ID_LEKCJA, TEMAT, ID_NAUCZYCIEL) values (6, 'Zwierzeta w lesie', 1);

insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (1, 0, 3, 'sprawdzian', 2, 3);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (2, 0, 4, 'kolokwium', 5, 4);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (3, 0, 5, 'egzamin', 1, 5);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (4, 0, 2, 'aktywnosc', 4, 1);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (5, 0, 1, 'odpowiedz ustna', 2, 2);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (6, 0, 5, 'odpowiedz ustna', 3, 6);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (7, 0, 3, 'sprawdzian', 2, 6);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (8, 0, 4, 'kolokwium', 5, 4);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (9, 0, 5, 'egzamin', 1, 5);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (10, 0, 2, 'aktywnosc', 3, 2);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (11, 0, 1, 'odpowiedz ustna', 2, 3);
insert into ocena (ID_OCENA, CZY_SEMESTRALNA, WARTOSC, OPIS, ID_STUDENT, ID_PRZEDMIOT) values (12, 0, 5, 'odpowiedz ustna', 6, 1);
