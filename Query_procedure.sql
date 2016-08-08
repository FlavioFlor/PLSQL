CREATE OR REPLACE PROCEDURE busca_carro(
    p_modelo VARCHAR)
AS
  v_marca VARCHAR(45);
  v_valor NUMERIC(12,2);
BEGIN
  SELECT marca, valor INTO v_marca, v_valor FROM carro WHERE modelo = p_modelo;
  DBMS_OUTPUT.PUT_LINE('A marca do carro é:');
  DBMS_OUTPUT.PUT_LINE(v_marca);
  DBMS_OUTPUT.PUT_LINE('E o valor:');
  DBMS_OUTPUT.PUT_LINE(v_valor);
END busca_carro;