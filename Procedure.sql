CREATE OR REPLACE PROCEDURE func
AS
  contador INTEGER;
BEGIN
  FOR contador IN
  ( 
  SELECT COD_CLIENTE,NOME FROM CLIENTE
  )
  LOOP
    INSERT
    INTO testando
      (
        codigo,
        nome
      )
      VALUES
      (
        contador.cod_cliente,
        contador.nome
      );
  END LOOP;
END func;