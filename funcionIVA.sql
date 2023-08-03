USE empresa;

DELIMITER $$

CREATE FUNCTION precio_iva(precio DECIMAL(11,2),iva INT)
RETURNS DECIMAL(11,2)
NO SQL
BEGIN
	DECLARE resultado DECIMAL(11,2);
    
    SET resultado = precio * (iva/100);
    RETURN    resultado;
END
$$