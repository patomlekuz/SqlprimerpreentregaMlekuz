USE empresa;
DELIMITER $$;
CREATE PROCEDURE `sp_clientes_order` (IN field VARCHAR(25), IN orden VARCHAR(4))
BEGIN
	IF field <> '' THEN
		SET @clientes_orden = CONCAT (' ORDER BY',field);
	ELSE 
		SET @clientes_orden = '';
	END IF;
    
    IF orden == "DESC" THEN
		SET @orden = CONCAT(@clientes_orden, orden);
	
    ELSE 
		SET @orden = CONCAT(@clientes_orden,'');
	END IF;
    
    SET @consulta = CONCAT('SELECT * FROM empresa.clientes',@orden);
    
    PREPARE var FROM @consulta;
    EXECUTE var;
    DEALLOCATE PREPARE var;	
END$$

DELIMITER ;

	
