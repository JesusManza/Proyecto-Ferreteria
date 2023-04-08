CREATE DATABASE productos_ferreteria;
USE productos_ferreteria;

CREATE TABLE productos(
	id_producto	INT AUTO_INCREMENT PRIMARY KEY,
	nombre		VARCHAR (255)	NOT NULL,
	descripcion	VARCHAR (100)	NOT NULL,
	precio 		DECIMAL (10,2)	NOT NULL,
	stock		INT		NOT NULL,
	marca		VARCHAR (50)	NOT NULL,
	proveedor	VARCHAR (70)	NOT NULL,
	categoria	VARCHAR (255)	NOT NULL,
	estado		CHAR (1)	NOT NULL DEFAULT '1'


)ENGINE = INNODB;

INSERT INTO productos_ferreteria (nombre, descripcion, precio, stock, marca, proveedor, categoria) VALUE
	('Taladro eléctrico', 'Taladro con cable de alimentación eléctrica de alta velocidad y potencia', 150.00, '25', 'Bosch', 'Ferretería La Herramienta', 'Herramientas eléctrica'),
	('Martillo', 'Martillo de mango de madera con cabeza de acero resistente.', 10.00, '50', 'Tramontina', 'Ferretería El Martillo', 'Herramientas manuales'),
	('Sierra circular', 'Sierra circular de alta potencia con disco de corte de 10 pulgadas.', 250.00, '10', 'DeWalt', 'Ferretería La Sierra', 'Herramientas eléctricas'),
	('Serrucho', 'Serrucho de mano con hoja de acero templado y mango ergonómico.', 15.00, '30', 'Stanley', 'Ferretería El Serrucho', 'Herramientas manuales');

SELECT * FROM productos_ferreteria;

DELIMITER $$
CREATE PROCEDURE spu_productos_ferreteria_listar()
BEGIN
	SELECT	idproducto,
		nombre,
		descripcion,
		precio,
		marca,
		stock
		FROM cursos
		WHERE estado = '1'
		ORDER BY idcurso DESC;
END $$

CALL spu_cursos_listar();