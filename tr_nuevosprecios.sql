CREATE TRIGGER `tr_nuevosprecios`
AFTER INSERT ON `productos`
FOR EACH ROW
INSERT INTO `precioanterior` (costo,precio_unidad)
VALUES (NEW.costo,NEW.precio_unidad)
