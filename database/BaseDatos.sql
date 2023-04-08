CREATE DATABASE ferreteria;
USE ferreteria;

 CREATE TABLE productos (
	 id_producto	INT AUTO_INCREMENT PRIMARY KEY,
	 nombre	      	VARCHAR (40)		NOT NULL,
	 descripcion  	VARCHAR (50)		NOT NULL,
	 categoria    	VARCHAR (50)		NOT NULL,
	 precio         DECIMAL (7,2)		NOT NULL,
	 stock          INT 			NOT NULL,
	 imagen	        VARCHAR (50)		NOT NULL,
	 estado         CHAR (1)		NOT NULL DEFAULT '1'
 )ENGINE = INNODB;
 
 INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
	('taladro', 'Taladro de 500w', 'herramientas electricas', 'Bosh', '1500', '20'),
	('sierra de calar', 'sierra de calar de 800w con laser', 'herramientas electricas', 'makita', '150', '10'),
	('Manguera de jardín', 'Manguera de jardín de 50 pies', 'Suministros de jardinería', 'Gardena', '29.99', '40'),
	('Llave ajustable', 'Llave ajustable de 10 pulgadas', 'Herramientas manuales', 'Stanley', '19.99', '30'),
	('Cerradura de seguridad', 'Cerradura de seguridad con llave de combinación', 'Suministros de seguridad', 'Abus', '49.99', '25'),
	('Cemento', 'Cemento Portland de 25kg',	'Materiales de construcción', 'Cemex', '12.99',	'100');
	
SELECT * FROM productos;