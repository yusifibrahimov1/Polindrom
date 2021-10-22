/*/ INSERT data TO PROCEDURE :: '101','10001','12345'   */

CREATE OR REPLACE PROCEDURE polindrom (a nvarchar2)
IS
  b varchar(10);
  c varchar(10);
  d int;
  e int:= 1;
  m int;
BEGIN
  d:= LENGTH(a);
      LOOP
        b:= SUBSTR(a,d,1);
        c:= SUBSTR(a,e,1);
            IF b=c THEN
               m:=1;
            ELSIF b<>c THEN
               m:=0;
               EXIT;
            END IF;
        d:= d-1;
        e:= e+1;
        EXIT WHEN d=0;
        EXIT WHEN e=LENGTH(a);
      END LOOP;
  IF m=1 THEN
        dbms_output.put_line(a||' is Polindrom');
  ELSIF m=0 THEN
        dbms_output.put_line(a||' is not Polindrom');
  END IF;
END;

/* EXECUTE PROCEDURE */

EXECUTE PROCEDURE polindrom('123321');
/
