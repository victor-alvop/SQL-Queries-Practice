-- TABLE CREATION

CREATE TABLE platzi.carreras (
	id INT,
	carrera VARCHAR(100),
	fecha_alta TIMESTAMP,
	vigente BOOLEAN
);

create table students (
	id INT,
	name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	tuition FLOAT,
	date TIMESTAMP,
	carreer_id INT,
	tutor_id INT
);