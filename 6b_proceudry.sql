--Autor: Maciej Zbierowski
--1 procedura aktualizuje srednie ocen studentow
create or replace procedure aktualizuj_srednia (
  v_id student.id_student%TYPE
) is v_srednia NUMBER := 0; v_ilosc NUMBER := 0; 
cursor cur_oceny is select OCENA.WARTOSC, OCENA.OPIS, STUDENT.IMIE from ocena inner join student on OCENA.ID_STUDENT=STUDENT.ID_STUDENT where STUDENT.ID_STUDENT=v_id;
begin
  for v_rekord in cur_oceny loop
      v_srednia := v_srednia + v_rekord.wartosc;
      v_ilosc := v_ilosc+1;
    end loop;
  update student set SREDNIA=v_srednia where ID_STUDENT=v_id;
  
end;
/

SET SERVEROUTPUT ON
DECLARE
cursor cur_student is select * from student;
BEGIN
    
  for v_rekord in cur_student loop
    aktualizuj_srednia(v_rekord.id_student);
  end loop;
  
END;

--2. procedura najlepszemu studentowi dodaje 1000 zl do stypednium
create or replace procedure zwieksz (
  v_id student.id_student%TYPE
) is v_name student.imie%TYPE;
begin
    update stypendium set KWOTA=KWOTA+1000 WHERE ID_STUDENT=v_id;
end;
/

SET SERVEROUTPUT ON
BEGIN
  zwieksz(sprawdz_najwieksze_stypendium());
END;

--3 procedura obliczajaca i ustawiajaca cene za warunek
create or replace procedure cena_za_warunek(v_ilosc przedmiot.ilosc_godzin%TYPE, v_id warunek.id_warunek%TYPE) is
begin
  update warunek set cena = cena + v_ilosc*7 where id_warunek=v_id;
end;
/

--4 procedura obliczajaca i ustawiajaca cene za repete
create or replace procedure cena_za_repete(v_ilosc przedmiot.ilosc_godzin%TYPE, v_id_r repeta.id_repeta%TYPE) is
begin
  update repeta set cena = cena + v_ilosc*8 where id_repeta=v_id_r;
end;
/

SET SERVEROUTPUT ON
DECLARE
 cursor cur_war is select przedmiot.ilosc_godzin, przedmiot.nazwa, warunek.ID_WARUNEK from przedmiot inner JOIN warunek on przedmiot.id_przedmiot=warunek.ID_PRZEDMIOT;
 cursor cur_rep is select przedmiot.ilosc_godzin, przedmiot.nazwa, repeta.ID_REPETA from przedmiot inner JOIN repeta on przedmiot.id_przedmiot=repeta.ID_PRZEDMIOT;
BEGIN
    
  for v_rekord in cur_war loop
    cena_za_warunek(v_rekord.ilosc_godzin, v_rekord.id_warunek);
  end loop;
  
  for v_rekord in cur_rep loop
    cena_za_repete(v_rekord.ilosc_godzin, v_rekord.id_repeta);
  end loop;
  
END;

--5 aktualizuje awans nauczyciela
create or replace procedure wypisz_dni is cursor cur_na is select * from nauczyciel;
begin
  for v_rekord in cur_na loop
    if zwroc_dni(v_rekord.id_nauczyciel) > 730000 then 
    update nauczyciel set czy_awans=1 where ID_NAUCZYCIEL=v_rekord.id_nauczyciel;
    end if;
  end loop;
end;
/

SET SERVEROUTPUT ON
BEGIN
    wypisz_dni();
END;