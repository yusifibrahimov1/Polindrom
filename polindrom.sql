/*/ INSERT data TO PROCEDURE :: '101','10001','12345'   */

CREATE OR REPLACE PROCEDURE polindrom (a nvarchar2)
IS
  b nvarchar2(10);
  c nvarchar2(10);
  d int;
  e int := 1;
  error_polindrom EXCEPTION;
BEGIN
  d:= LENGTH(a);
      LOOP
                b:= SUBSTR(a,e,1);
                c:= SUBSTR(a,d,1);
                    IF b<>c THEN
                       dbms_output.put_line(a||' is not Polindrom');
                       EXIT;
                    ELSE
                       RAISE error_polindrom;
                    END IF;
                d:=d-1;
                    EXIT WHEN d=0;
                e:=e+1;
                    EXIT WHEN e=LENGTH(a);
      END LOOP;
  EXCEPTION
      WHEN error_polindrom THEN
           dbms_output.put_line(a||' is Polindrom');
END;
