--Autor: Maciej Zbierowski
create or replace PACKAGE projektowy IS

  FUNCTION sprawdz_pesel(p_id STUDENT.ID_STUDENT%TYPE) return boolean;
  FUNCTION zwroc_pesel(p_id STUDENT.ID_STUDENT%TYPE) return varchar2;
  FUNCTION sprawdz_najwieksze_stypendium return STUDENT.ID_STUDENT%TYPE;
  FUNCTION sprawdz_limit(v_id GRUPA.ID_GRUPA%TYPE) RETURN BOOLEAN;
  FUNCTION zwroc_dni(v_id NAUCZYCIEL.ID_NAUCZYCIEL%TYPE) RETURN NUMBER;
  
  PROCEDURE aktualizuj_srednia (v_id student.id_student%TYPE);
  PROCEDURE zwieksz (v_id student.id_student%TYPE);
  PROCEDURE cena_za_warunek(v_ilosc przedmiot.ilosc_godzin%TYPE, v_id warunek.id_warunek%TYPE);
  PROCEDURE cena_za_repete(v_ilosc przedmiot.ilosc_godzin%TYPE, v_id_r repeta.id_repeta%TYPE);
  PROCEDURE wypisz_dni;

end projektowy;
/

create or replace PACKAGE BODY projektowy IS
  
  FUNCTION sprawdz_pesel(p_id STUDENT.ID_STUDENT%TYPE) RETURN BOOLEAN IS v_pesel STUDENT.PESEL%TYPE; v_data STUDENT.DATA_URODZENIA%TYPE; war BOOLEAN;
  BEGIN
    select pesel into v_pesel from student where ID_STUDENT=p_id;
    select DATA_URODZENIA into v_data from student where id_student=p_id;
    
    war := (LENGTH(v_pesel) = 11 AND substr(extract(year from v_data), 3, 4) = substr(v_pesel, 0, 2) AND to_char(v_data, 'MM') = substr(v_pesel, 3, 2) AND to_char(v_data, 'DD') = substr(v_pesel, 5, 2));
    
    if war = true then return TRUE;
    else return FALSE;
    end if;
  
    exception
      when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');
  
  END sprawdz_pesel;
  
  FUNCTION zwroc_pesel(p_id STUDENT.ID_STUDENT%TYPE) RETURN VARCHAR2 IS v_pesel STUDENT.PESEL%TYPE; v_data STUDENT.DATA_URODZENIA%TYPE; war BOOLEAN;v_reszta VARCHAR2(5);
  BEGIN
    select pesel into v_pesel from student where ID_STUDENT=p_id;
    select DATA_URODZENIA into v_data from student where id_student=p_id;
    v_reszta := substr(v_pesel, 7, 5);
    war := (LENGTH(v_pesel) = 11 AND substr(extract(year from v_data), 3, 4) = substr(v_pesel, 0, 2) AND to_char(v_data, 'MM') = substr(v_pesel, 3, 2) AND to_char(v_data, 'DD') = substr(v_pesel, 5, 2));
    
    if war = true then return v_pesel;
    else 
      v_pesel := concat(to_char(v_data, 'YY'), to_char(v_data, 'MM'));
      v_pesel := concat(v_pesel, to_char(v_data, 'DD'));
      v_pesel := concat(v_pesel, v_reszta);
      return v_pesel;
    end if;
  
    exception
      when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');
  
  END zwroc_pesel;
  
  FUNCTION sprawdz_najwieksze_stypendium RETURN STUDENT.ID_STUDENT%TYPE IS v_max STYPENDIUM.KWOTA%TYPE; v_id STUDENT.ID_STUDENT%TYPE;
  BEGIN
    select max(kwota) into v_max from stypendium;
    select id_student into v_id from stypendium where kwota=v_max;
    return v_id;
    exception
      when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');
  END sprawdz_najwieksze_stypendium;
  
  FUNCTION sprawdz_limit(v_id GRUPA.ID_GRUPA%TYPE) RETURN BOOLEAN IS v_ilosc NUMBER; v_limit GRUPA.LIMIT_OSOB%TYPE;
  BEGIN
    select count(*) into v_ilosc from student where ID_GRUPA=v_id;
    select limit_osob into v_limit from grupa where id_grupa=v_id;
    
    if v_ilosc < v_limit then return true;
    else return false;
    end if;
    
    exception
      when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');
  
  END sprawdz_limit;
  
  FUNCTION zwroc_dni(v_id NAUCZYCIEL.ID_NAUCZYCIEL%TYPE) RETURN NUMBER IS v_ilosc NUMBER; v_data NAUCZYCIEL.DATA_ZATRUDNIENIA%TYPE;
  BEGIN
    select data_zatrudnienia into v_data from nauczyciel where ID_NAUCZYCIEL=v_id;
    
    v_ilosc := trunc(sysdate - to_date(v_data, 'yyyy-mm-dd'));
    
    return v_ilosc;
    
    exception
      when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');
  
  END zwroc_dni;
  
  PROCEDURE aktualizuj_srednia (v_id student.id_student%TYPE) is v_srednia NUMBER := 0; v_ilosc NUMBER := 0; 
  cursor cur_oceny is select OCENA.WARTOSC, OCENA.OPIS, STUDENT.IMIE from ocena inner join student on OCENA.ID_STUDENT=STUDENT.ID_STUDENT where STUDENT.ID_STUDENT=v_id;
  begin
    for v_rekord in cur_oceny loop
        v_srednia := v_srednia + v_rekord.wartosc;
        v_ilosc := v_ilosc+1;
        
      end loop;
    update student set SREDNIA=v_srednia where ID_STUDENT=v_id;
  end aktualizuj_srednia;
  
  procedure zwieksz (v_id student.id_student%TYPE) is v_name student.imie%TYPE;
  begin
      update stypendium set KWOTA=KWOTA+1000 WHERE ID_STUDENT=v_id;
  end zwieksz;
  
  procedure cena_za_warunek(v_ilosc przedmiot.ilosc_godzin%TYPE, v_id warunek.id_warunek%TYPE) is
  begin
    update warunek set cena = cena + v_ilosc*7 where id_warunek=v_id;
  end cena_za_warunek;
  
  procedure cena_za_repete(v_ilosc przedmiot.ilosc_godzin%TYPE, v_id_r repeta.id_repeta%TYPE) is
  begin
    update repeta set cena = cena + v_ilosc*8 where id_repeta=v_id_r;
  end cena_za_repete;
  
  procedure wypisz_dni is cursor cur_na is select * from nauczyciel;
  begin
    for v_rekord in cur_na loop
      if zwroc_dni(v_rekord.id_nauczyciel) > 730000 then 
      update nauczyciel set czy_awans=1 where ID_NAUCZYCIEL=v_rekord.id_nauczyciel;
      end if;
    end loop;
  end wypisz_dni;
  
  end projektowy;
/