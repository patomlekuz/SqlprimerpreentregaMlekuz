CREATE DATABASE empresa;
USE empresa;

CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT NOT NULL UNIQUE,
    nombre_empresa VARCHAR(50) NOT NULL,
	PRIMARY KEY (id_cliente)
   
    
);

CREATE TABLE vendedores( 
	id_vendedor INT AUTO_INCREMENT NOT NULL UNIQUE,
    nombre CHAR(50) NOT NULL,
    apellido CHAR(50) NOT NULL,
    PRIMARY KEY (id_vendedor)
    
);

CREATE TABLE proveedores(
	id_proveedor INT AUTO_INCREMENT NOT NULL UNIQUE,
    nombre_empresa VARCHAR(50),
    PRIMARY KEY (id_proveedor)
);

CREATE TABLE empleados(
	id_empleado INT AUTO_INCREMENT NOT NULL UNIQUE,
    dni INT NOT NULL,
    nombre CHAR(50) NOT NULL,
    apellido CHAR(50) NOT NULL,
    PRIMARY KEY (id_empleado)
    
);

CREATE TABLE email(
	id_email INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_proveedor INT ,
    id_cliente INT ,
    id_empleado INT ,
    id_vendedor INT ,
    email VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_email),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

CREATE TABLE direcciones(
	id_direccion INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_proveedor INT,
    id_cliente INT ,
    id_empleado INT ,
    id_vendedor INT ,
    localidad VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    altura INT NOT NULL,
    PRIMARY KEY (id_direccion),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

CREATE TABLE telefonos(
	id_telefonos INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_proveedor INT ,
    id_cliente INT ,
    id_empleado INT ,
    id_vendedor INT ,
    telefono1 INT NOT NULL,
    telefono2 INT DEFAULT 0,
    PRIMARY KEY (id_telefonos),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

CREATE TABLE productos(
	id_producto INT AUTO_INCREMENT NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    costo DECIMAL(12,2) NOT NULL,
    precio_unidad DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (id_producto)
);

CREATE TABLE ordencompra_info(
	id_ordencomprainfo INT AUTO_INCREMENT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    subtotal DECIMAL(12,2) NOT NULL,
    iva DECIMAL(12,2) NOT NULL,
    total DECIMAL(12,2) NOT NULL,
    fecha DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
	PRIMARY KEY (id_ordencomprainfo),
	FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

CREATE TABLE ordencompra(
	id_ordencompra INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_cliente INT NOT NULL,
    id_ordencomprainfo INT NOT NULL,
    PRIMARY KEY (id_ordencompra),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_ordencomprainfo) REFERENCES ordencompra_info(id_ordencomprainfo)
);

CREATE TABLE cobros(
	id_cobros INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_ordencompra INT NOT NULL,
    comision INT NOT NULL DEFAULT 0,
    total DECIMAL(12,2),
    PRIMARY KEY (id_cobros),
    FOREIGN KEY (id_ordencompra) REFERENCES ordencompra(id_ordencompra)
);

CREATE TABLE facturacion(
	id_facturacion INT AUTO_INCREMENT NOT NULL UNIQUE,
	id_ordencompra INT NOT NULL,
    fecha_hora  DATETIME NOT NULL,
    PRIMARY KEY (id_facturacion),
    FOREIGN KEY (id_ordencompra) REFERENCES ordencompra(id_ordencompra)
);
CREATE TABLE sueldo_empleados (
	id_sueldo INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_empleado INT NOT NULL,
	id_cobros INT NOT NULL,
    mes VARCHAR(30) NOT NULL,
    sueldo DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (id_sueldo),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_cobros) REFERENCES cobros(id_cobros)    
);

CREATE TABLE facturas(
	id_facturas INT AUTO_INCREMENT NOT NULL UNIQUE,
    id_proveedor INT NOT NULL,
    fecha DATETIME NOT NULL,
    fecha_vencimiento DATETIME NOT NULL,
    total DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (id_facturas),
	FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)    
);
