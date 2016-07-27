CREATE OR REPLACE PROCEDURE array_query
AS
  CURSOR c_conta
  IS
    SELECT * FROM conta;
  array_conta conta%ROWTYPE;
BEGIN
  OPEN c_conta;
  LOOP
    FETCH c_conta INTO array_conta;
    EXIT
  WHEN c_conta%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(array_conta.numero);
    DBMS_OUTPUT.PUT_LINE(array_conta.agencia);
  END LOOP;
  CLOSE c_conta;
END array_query;
