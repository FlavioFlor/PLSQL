/*
	Abaixo um exemplo de Cursor Genérico. Esse tipo de CURSOR serve para guardar informação
	de qualquer tabela
*/
CREATE OR REPLACE PROCEDURE generico
AS
TYPE obj_generico
IS
  REF
  CURSOR;
    obj_ge obj_generico;
    vetor_cliente cliente%ROWTYPE;
    vetor_carro carro%ROWTYPE;
  BEGIN
    OPEN obj_ge FOR SELECT*FROM cliente;
    LOOP
      FETCH obj_ge INTO vetor_cliente;
    EXIT
  WHEN obj_ge%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(vetor_cliente.nome);
  END LOOP;
  CLOSE obj_ge;
  OPEN obj_ge FOR SELECT * FROM carro;
  LOOP
    FETCH obj_ge INTO vetor_carro;
    EXIT
  WHEN obj_ge%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(vetor_carro.modelo);
  END LOOP;
  CLOSE obj_ge;
END generico;