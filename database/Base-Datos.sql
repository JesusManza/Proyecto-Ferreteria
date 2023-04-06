CREATE DATABASE ferreteria;
USE ferreteria;

CREATE TABLE productos_ferreteria(
	idporducto	INT AUTO_INCREMENT PRIMARY KEY,
	nombre		VARCHAR (255)	NOT NULL,
	descripcion	VARCHAR (1000)	NOT NULL,
	precio		DECIMAL  (10,2)	NOT NULL,
	stock		INT		NOT NULL,
	marca		VARCHAR (50)	NOT NULL,
	proveedor	VARCHAR (70)	NOT NULL,
	categoria	VARCHAR (255)	NOT NULL,
	estado		CHAR (1)	NOT NULL DEFAULT '1'

)ENGINE = INNODB;

INSERT INTO productos_ferreteria (nombre, descripcion, precio, stock, marca, proveedor, categoria) VALUES
	('Taladro eléctrico', 'Taladro con cable de alimentación eléctrica de alta velocidad y potencia', '150.00', '25', 'Bosch', 'Ferretería La Herramienta',	'Herramientas eléctricas'),
	('Martillo', 'Martillo de mango de  madera con cabeza de acero resistente', '30.00', '20', 'Tramontina', 'Ferreteria el Martillo', 'Herramientas manuales'),
	('Sierra circular', 'Sierra circular de alta potencia con disco de corte de 10 pulgadas', '250.00', '10', 'DeWalt', 'Ferretería La Sierra', 'Herramientas eléctricas'),
	('Clavos', 'Set de clavos galvanizados de diferentes tamaños y grosores', '5.00', '1000', 'Truper', 'Ferretería Los Clavos', 'Materiales de construcción'),
	('Cinta métrica', 'Cinta métrica de 25 pies de largo y sistema de bloqueo automático', '12.00', '40', 'Stanley', 'Ferretería La Cinta', 'Herramientas manuales');

SELECT * FROM productos_ferreteria;


