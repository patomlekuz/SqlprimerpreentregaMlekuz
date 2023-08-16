CREATE OR REPLACE VIEW vs_informacionclientes AS
(SELECT id_cliente,nonbre_empresa
FROM clientes AS C
JOIN email AS E  ON (E.id_cliente = C.id_cliente))
