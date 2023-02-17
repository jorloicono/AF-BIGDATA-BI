-- Creación de tablas dimensionales
CREATE TABLE td_temporal(
	anyo_mes NUMERIC(6) PRIMARY KEY,
	mes NUMERIC(2) NOT NULL,
	trimestre NUMERIC(1) NOT NULL,
	anyo NUMERIC(4) NOT NULL
);

CREATE TABLE td_coche(
	id serial PRIMARY KEY,
	marca VARCHAR(30) NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	precio NUMERIC(9) NOT NULL
);

CREATE TABLE td_gestor(
	id serial PRIMARY KEY,
	dni VARCHAR(9),
	nombre VARCHAR(30),
	apellidos VARCHAR(100)
);

CREATE TABLE td_concesionario(
	id serial PRIMARY KEY,
	nombre VARCHAR(100),
	direccion VARCHAR(200)
);

COMMIT;

-- Creación de tlaba de hechos
CREATE TABLE th_ventas(
	id_temporal NUMERIC(6) REFERENCES td_temporal(anyo_mes),
	id_coche INTEGER REFERENCES td_coche(id),
	id_concesionario INTEGER REFERENCES td_concesionario(id),
	id_gestor INTEGER REFERENCES td_gestor(id),
	existe_financiacion BOOLEAN NOT NULL,
	numero_ventas NUMERIC(4),
	PRIMARY KEY (id_temporal,id_coche,id_concesionario,id_gestor,existe_financiacion)
);