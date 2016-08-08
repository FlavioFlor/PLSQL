CREATE OR REPLACE PROCEDURE cursors_implicito
AS
BEGIN
  UPDATE carro SET valor = 2500 WHERE marca = 'Ford';
  IF SQL%FOUND THEN
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' Linhas alteradas');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Nenhuma linha foi alterada');
  END IF;
END cursors_implicito;