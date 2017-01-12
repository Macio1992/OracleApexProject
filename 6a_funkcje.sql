--Autor: Maciej Zbierowski
--1 funckja sprawdza poprawnosc peselu studenta

create or replace function sprawdz_pesel(
  p_id STUDENT.ID_STUDENT%TYPE
) RETURN BOOLEAN IS v_pesel STUDENT.PESEL%TYPE; v_data STUDENT.DATA_URODZENIA%TYPE; war BOOLEAN;
BEGIN

  select pesel into v_pesel from student where ID_STUDENT=p_id;
  select DATA_URODZENIA into v_data from student where id_student=p_id;
  
  war := (LENGTH(v_pesel) = 11 AND substr(extract(year from v_data), 3, 4) = substr(v_pesel, 0, 2) AND to_char(v_data, 'MM') = substr(v_pesel, 3, 2) AND to_char(v_data, 'DD') = substr(v_pesel, 5, 2));
  
  if war = true then return TRUE;
  else return FALSE;
  end if;

  exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');

END;
/

SET SERVEROUTPUT ON
DECLARE
v_id student.id%TYPE;
BEGIN
    
 select id_student into v_id from student where id_student = 1;
 if sprawdz_pesel(v_id) then DBMS_OUTPUT.PUT_LINE('ok');
 else DBMS_OUTPUT.PUT_LINE('nie ok');
 end if;
  
END;

--2 funkcja zwraca poprawny pesel
create or replace function zwroc_pesel(
  p_id STUDENT.ID_STUDENT%TYPE
) RETURN VARCHAR2 IS v_pesel STUDENT.PESEL%TYPE; v_data STUDENT.DATA_URODZENIA%TYPE; war BOOLEAN;v_reszta VARCHAR2(5);
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

END;
/

SET SERVEROUTPUT ON

declare
cursor cur_student is select * from student;
BEGIN  
  for v_rekord in cur_student loop
   DBMS_OUTPUT.PUT_LINE('Student o id: '||v_rekord.id_student||' i jeg pesel: ' || zwroc_pesel(v_rekord.id_student));
  end loop;
  
END;

--3. funkcja zwraca id studenta o najwiekszym stypendium
create or replace function sprawdz_najwieksze_stypendium RETURN STUDENT.ID_STUDENT%TYPE IS v_max STYPENDIUM.KWOTA%TYPE; v_id STUDENT.ID_STUDENT%TYPE;
BEGIN

  select max(kwota) into v_max from stypendium;
  select id_student into v_id from stypendium where kwota=v_max;
  
  return v_id;
  
  exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');

END;
/

SET SERVEROUTPUT ON
DECLARE
v_imie student.imie%TYPE;
BEGIN  
  
  select imie into v_imie from student where id_student=sprawdz_najwieksze_stypendium();
  
  DBMS_OUTPUT.PUT_LINE('Najwieksze stypendium ma uczen : '||v_imie);
  
END;

-- 4. funkcja zwraca ilosc dni przepracowanych przez nauczyciela
create or replace function zwroc_dni(v_id NAUCZYCIEL.ID_NAUCZYCIEL%TYPE) RETURN NUMBER IS v_ilosc NUMBER; v_data NAUCZYCIEL.DATA_ZATRUDNIENIA%TYPE;
BEGIN
  select data_zatrudnienia into v_data from nauczyciel where ID_NAUCZYCIEL=v_id;
  
  v_ilosc := trunc(sysdate - to_date(v_data, 'yyyy-mm-dd'));
  
  return v_ilosc;
  
  exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');

END;
/

SET SERVEROUTPUT ON
DECLARE
BEGIN
    
  DBMS_OUTPUT.PUT_LINE('Nauczyciel o id 1 przepracowal: ' || zwroc_dni(1));
  
END;

--5ta funckja sprawdza czy w grupie jest dozwolona liczba osob
create or replace function sprawdz_limit(v_id GRUPA.ID_GRUPA%TYPE) RETURN BOOLEAN IS v_ilosc NUMBER; v_limit GRUPA.LIMIT_OSOB%TYPE;
BEGIN
  select count(*) into v_ilosc from student where ID_GRUPA=v_id;
  select limit_osob into v_limit from grupa where id_grupa=v_id;
  
  if v_ilosc < v_limit then return true;
  else return false;
  end if;
  
  exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('nie znaleziono danych');

END;
/

SET SERVEROUTPUT ON
DECLARE
cursor cur_student is select * from student;
BEGIN
    
  if sprawdz_limit(1) = true then DBMS_OUTPUT.PUT_LINE('limit nie zostal przekroczony');
  else DBMS_OUTPUT.PUT_LINE('limit zostal przekroczony');
  end if;
  
END;