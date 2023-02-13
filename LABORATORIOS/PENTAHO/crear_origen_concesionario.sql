CREATE DATABASE origen_concesionario

--CREACION TABLAS
CREATE TABLE gestores(
	id NUMERIC(3) PRIMARY KEY,
	dni VARCHAR(9),
	nombre VARCHAR(30),
	apellidos VARCHAR(100)
);

CREATE TABLE concesionarios(
	id NUMERIC(3) PRIMARY KEY,
	nombre VARCHAR(100),
	direccion VARCHAR(200)
);

CREATE TABLE ventas_coches(
	id_transaccion NUMERIC(3) PRIMARY KEY,
	id_gestor NUMERIC(3) NOT NULL,
	id_concesionario NUMERIC(3) NOT NULL,
	marca VARCHAR(30) NOT NULL,
	modelo VARCHAR(30) NOT NULL,
	porcentaje_financiado NUMERIC(3) NOT NULL,
	fecha_venta DATE NOT NULL
);

--INSERTS
INSERT INTO gestores VALUES(12,'12345678A','Manuel','Perez García'),
(23,'87654321A','Juan','Lago Astucio'),
(34,'12341234A','Pedro','García Mata');

INSERT INTO concesionarios VALUES(934,'VENTCAR','Calle falsa, 23 Sevilla 41020'),
(654,'ESYT','Avenida más falsa, 54 Sevilla 41020');

INSERT INTO ventas_coches VALUES(1,12,934,'Ford','Focus',56,'2019-01-05'),
(2,12,934,'Seat','Ibiza',67,'2019-01-12'),
(3,12,934,'BMW','X1',12,'2018-03-03'),
(4,12,654,'Seat','Ateca',0,'2019-08-23'),
(5,12,934,'Ford','Mondeo',0,'2019-06-30'),
(6,12,934,'Seat','León',78,'2019-07-01'),
(7,12,654,'Seat','Córdoba',67,'2019-07-22'),
(8,23,934,'Seat','Ateca',23,'2018-08-08'),
(9,23,934,'Ford','Focus',12,'2018-03-11'),
(10,23,934,'Seat','Córdoba',0,'2019-01-14'),
(11,23,654,'BMW','Serie 2',43,'2019-01-18'),
(12,23,654,'BMW','Serie 1',0,'2018-08-30'),
(13,23,934,'Seat','Ibiza',78,'2019-07-23'),
(14,34,934,'Seat','León',93,'2018-03-12'),
(15,34,654,'Ford','Mondeo',57,'2018-03-17'),
(16,34,654,'Seat','Ibiza',0,'2018-08-03'),
(17,34,934,'BMW','X2',98,'2019-10-09'),
(18,34,654,'Seat','Ibiza',46,'2019-05-15'),
(19,34,654,'Ford','Transit',0,'2019-08-05'),
(20,34,654,'Seat','León',67,'2019-06-09'),
(21,34,934,'Ford','Focus',56,'2018-12-30'),
(22,12,934,'Ford','Focus',67,'2019-03-16'),
(23,12,934,'Seat','Ibiza',89,'2018-11-05'),
(24,12,934,'BMW','X1',98,'2019-01-02'),
(25,12,654,'Seat','Ateca',45,'2019-01-23'),
(26,12,934,'Seat','León',16,'2019-03-29'),
(27,12,654,'Seat','Córdoba',0,'2019-02-05'),
(28,23,934,'Seat','Ateca',20,'2018-01-13'),
(29,23,934,'Seat','Córdoba',56,'2018-06-24'),
(30,23,654,'BMW','Serie 2',98,'2019-01-10'),
(31,23,654,'BMW','Serie 1',65,'2018-03-20'),
(32,34,654,'Seat','Ibiza',0,'2018-08-25'),
(33,34,934,'BMW','X2',45,'2019-01-30'),
(34,34,654,'Seat','Ibiza',67,'2019-08-21'),
(35,34,654,'Seat','León',57,'2019-02-19'),
(36,34,934,'Ford','Focus',0,'2019-03-05'),
(37,34,934,'Seat','Córdoba',36,'2018-01-06');
