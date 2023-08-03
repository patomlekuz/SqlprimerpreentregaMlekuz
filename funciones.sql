USE empresa
DELIMITER $$

CREATE FUNCTION calcular_total (cliente INT)
RETURNS DECIMAL(11,2)
READS SQL DATA
BEGIN
	DECLARE resultado DECIMAL(11,2);
    DECLARE id_cliente INT;
    DECLARE OC INT;
    
    SET OC = (	SELECT id_ordencompra -- id orden compra para relacionar con cliente
				FROM ordencompra 
                WHERE id_cliente=cliente); 
   
   SET id_cliente = (	SELECT * -- id cliente para encontrar facturas 
						FROM clientes 
                        WHERE cliente=id_cliente);	
    
    SET resultado = (	SELECT SUM(total) -- suma del total de las ordenes de compra del cliente
						FROM ordencompra_info
                        WHERE id_ordencomprainfo= OC);
	RETURN resultado;
END
$$
	