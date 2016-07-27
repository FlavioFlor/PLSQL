/*Consulta de array com la�o while*/

CREATE OR REPLACE PROCEDURE loop_while_array
AS
  CURSOR c_companhia
  IS
    SELECT * FROM companhia;
  v_companhia companhia%ROWTYPE;
BEGIN
  OPEN c_companhia;
  FETCH c_companhia INTO v_companhia;
  WHILE c_companhia%FOUND
  LOOP
    DBMS_OUTPUT.PUT_LINE(v_companhia.cod_companhia);
    DBMS_OUTPUT.PUT_LINE(v_companhia.nome);
    FETCH c_companhia INTO v_companhia;
  END LOOP;
  CLOSE c_companhia;
END loop_while_array;

/*Exemplo com la�o FOR
  observe que n�o precisamos abrir e fechar o CURSOR, avan�ar ponteiro e nem definir condi��o de parada
*/
CREATE OR REPLACE PROCEDURE loop_for_array
AS
  CURSOR c_companhia
  IS
    SELECT * FROM companhia;
  v_companhia companhia%ROWTYPE;
BEGIN
  FOR v_companhia IN c_companhia
  LOOP
    DBMS_OUTPUT.PUT_LINE(v_companhia.cod_companhia);
    DBMS_OUTPUT.PUT_LINE(v_companhia.nome);
  END LOOP;
END loop_for_array;