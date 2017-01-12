--Autor: Maciej Zbierowski
--1
create or replace trigger wstaw_zadanie
before insert on zadanie_konkursowe
for each row when (new.id_zadanie > 0)
begin
  if :OLD.ilosc_punktow > 20 then :NEW.ilosc_punktow:=1000;
  else :NEW.ilosc_punktow:=5000;
  end if;
  end;
  /
  
SET SERVEROUTPUT ON
DECLARE
BEGIN
  insert into zadanie_konkursowe values(7, 'tresc7', 19, 2);
END;

--2. przed wstawieniem kierunku sprawdz w kierunkach czy id wydzialu ktore chcesz wstawic juz nie przekracza limitu
create or replace trigger wstaw_kierunek
before insert on kierunek
for each row when (new.id_kierunek > 0)
declare
v_ilosc_kierunkow NUMBER;
v_ilosc_w_tabeli NUMBER;
v_nazwa wydzial.nazwa%TYPE;
incorrect EXCEPTION;
begin

  select ilosc_kierunkow into v_ilosc_kierunkow from wydzial where id_wydzial = :NEW.id_wydzial;
  select count(*) into v_ilosc_w_tabeli from kierunek where id_wydzial=:NEW.id_wydzial;
  select nazwa into v_nazwa from wydzial where id_wydzial=:NEW.id_wydzial;
  
  if v_ilosc_w_tabeli >= v_ilosc_kierunkow then raise incorrect;
  end if;
  
  exception when incorrect then raise_application_error(-20101,'limit kierunkow na wydziale: '||v_nazwa||' zostal osiagniety');
end;

SET SERVEROUTPUT ON
DECLARE
BEGIN
  insert into kierunek values(7, 'testowy', 's', 3);
END;

--3
create or replace trigger ustawCene
before insert on repeta
for each row when (new.id_repeta > 0)
declare
v_ilosc_godzin przedmiot.ilosc_godzin%TYPE;
begin
  select ilosc_godzin into v_ilosc_godzin from przedmiot where id_przedmiot=:NEW.id_przedmiot;
  :NEW.cena := v_ilosc_godzin*7;
end;

SET SERVEROUTPUT ON
DECLARE
BEGIN
  insert into repeta values(7, 0, 2, 3);
END;

--4
create or replace trigger kodPocztowy
before insert on adres_nauczyciela
for each row when (new.id_adres > 0)
declare
incorrect EXCEPTION;
begin
  if LENGTH(:NEW.kod_pocztowy) != 6 then raise incorrect;
  end if;
  exception when incorrect then raise_application_error(-20101,'podales nieprawidlowa dlugosc kodu: '||LENGTH(:NEW.kod_pocztowy)||'. Dlugosc musi byc 6');
end;

SET SERVEROUTPUT ON
DECLARE
BEGIN
  insert into adres_nauczyciela values(7, 'jakas', 26, 34, '12', 'Wawa');
END;

--5
create or replace trigger przedZmianaOceny
before update on ocena
for each row when (new.id_ocena > 0)
declare
incorrect EXCEPTION;
begin
  
  if :new.wartosc <= 0 OR :new.wartosc > 5 then raise incorrect;
  end if;
  
  exception when incorrect then raise_application_error(-20101,'Podales niepoprawna ocene: '||:NEW.wartosc||'. Zakres oceny: <2:5>');
end;

SET SERVEROUTPUT ON
DECLARE
BEGIN
  update ocena set wartosc=26 where id_ocena=13;
END;