USE empresa;
INSERT INTO clientes 
VALUES
	(null,"Distribuidora JP"),
	(null,"Mundo Juguete"),
	(null,"Lopez S.A"),
	(null,"Garcia y Hnos");

INSERT INTO vendedores
VALUES
	(null,"Luis","Gonzales"),
    (null,"Alexis","Justa"),
    (null, "Diego","Gaucho");
    
INSERT INTO proveedores
VALUES
	(null,"San Antonio SRL"),
    (null,"Uspallata S.A"),
    (null,"Papelera Diaz"),
    (null,"Quimica Hutton");
    
INSERT INTO empleados
VALUES
	(null,30209874,"miguel","rojas"),
	(null,21568748,"juan","Mamani"),
    (null,18562345,"Jose","Ruth"),
    (null,26984512,"Osvaldo","Gutierrez");

INSERT INTO email
VALUES
	(null,1,null,null,null,"sanantonio@gmail.com"),
    (null,null,1,null,null,"indjp@gmail.com"),
    (null,null,null,1,null,"rojasmiguel@gmail.com"),
    (null,null,null,null,1,"luisgonzales@gmail.com"),
    (null,2,null,null,null,"uspallata@gmail.com"),
    (null,null,2,null,null,"mundojuguete@gmail.com"),
    (null,null,null,2,null,"juanmamani@gmail.com"),
    (null,null,null,null,2,"alexistjusta@gmail.com"),
    (null,3,null,null,null,"papeleradiaz@gmail.com"),
    (null,null,3,null,null,"lopezsa@gmail.com"),
    (null,null,null,3,null,"joseruth@gmail.com"),
    (null,null,null,null,3,"gauchodiego@gmail.com"),
	(null,4,null,null,null,"hutton@gmail.com"),
    (null,null,4,null,null,"hnosgarcia@gmail.com"),
    (null,null,null,4,null,"osvaldogut@gmail.com");
    
INSERT INTO telefonos
VALUES
	(null,1,null,null,null,1154845612,null),
    (null,null,1,null,null,1123598451,null),
    (null,null,null,1,null,1156894752,null),
    (null,null,null,null,1,1123256874,null),
    (null,2,null,null,null,1149856242,null),
    (null,null,2,null,null,1145378654,null),
    (null,null,null,2,null,1145378534,null),
    (null,null,null,null,2,1143786886,null),
    (null,3,null,null,null,1147895362,null),
    (null,null,3,null,null,1189652321,null),
    (null,null,null,3,null,1178456698,null),
    (null,null,null,null,3,1159874562,null),
    (null,4,null,null,null,1123548953,null),
    (null,null,4,null,null,1187569853,null),
    (null,null,null,4,null,1154875623,null);
    
    
INSERT INTO direcciones
VALUES
	(null,1,null,null,null,"san martin","CABA",2354),
    (null,null,1,null,null,"deheza","CABA",4678),
    (null,null,null,1,null,"pico","Buenos Aires",7678),
    (null,null,null,null,1,"pinto","CABA",6786),
    (null,2,null,null,null,"belgrano","CABA",2453),
    (null,null,2,null,null,"deheza","olavarria",2145),
    (null,null,null,2,null,"josehernandez","Buenos Aires",5345),
    (null,null,null,null,2,"juanbjusto","CABA",6575),
    (null,3,null,null,null,"serrano","CABA",7653),
    (null,null,3,null,null,"cuba","CABA",1234),
    (null,null,null,3,null,"bulnes","Buenos Aires",4567),
    (null,null,null,null,3,"balvin","CABA",8644),
    (null,4,null,null,null,"yrigoyen","CABA",6785),
    (null,null,4,null,null,"nuñez","CABA",4567),
    (null,null,null,4,null,"melian","Buenos Aires",546);
    
INSERT INTO productos
VALUES 
	(null,"rollo x5m",342,690),
    (null,"rollo x10m",700,1000),
    (null,"rollo x20m",1000,2500),
    (null,"rollo x50m",1700,6000),
    (null,"rollo x100m",8000,10000),
    (null,"rollo x200m",18000,35000);
    
INSERT INTO ordencompra_info
VALUES
	(null,2,20,20000,4200,24200,current_date(),current_date()+90),
    (null,5,10,100000,21000,121000,current_date(),current_date()+90),
    (null,3,100,250000,52500,325000,current_date(),current_date()+90),
    (null,1,5,3450,724,4174,"2022-12-01","2022-03-01"),
    (null,5,2,16000,3360, 19360,"2023-03-01","2023-06-01");
    
INSERT INTO ordencompra
VALUES
	(null,1,3),
    (null,3,1),
    (null,2,4),
    (null,4,2),
    (null,4,5);
    
INSERT INTO cobros
VALUES
	(null,1,5,1000),
    (null,2,5,5000),
    (null,3,10,25000),
    (null,4,5,208.7);

INSERT INTO facturacion
VALUES
	(null,1,"2022-05-15"),
    (null,2,"2022-07-24"),
    (null,3,"2022-01-26"),
    (null,4,"2023-04-25");

INSERT INTO sueldo_empleados
VALUES
	(null,1,3,"mayo",25000),
    (null,2,1,"mayo",25000),
    (null,3,2,"mayo",25000),
    (null,4,4,"mayo",25000);
    
INSERT INTO facturas
VALUES
	(null,1,current_date(),current_date()+90,26000),
    (null,2,current_date(),current_date()+90,20000),
    (null,3,current_date(),current_date()+90,12000),
    (null,4,current_date(),current_date()+90,10000);