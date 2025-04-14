CREATE DATABASE ofertas_empleo;
USE ofertas_empleo;

CREATE TABLE ofertas (
    id_url VARCHAR(1000) PRIMARY KEY,
    fecha DATE,
    oferta VARCHAR(256),
    empresa VARCHAR(256),
    funcion VARCHAR(256),
    salario FLOAT,
    requisitos VARCHAR(256), -- este no se si meterlo como relacional (oferta_requisitos)
    id_ubicacion INT,
    id_modalidad INT,
    id_jornada INT,
    id_contrato INT,
    vacaciones INT,
    descripcion VARCHAR(1000),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion (id_ubicacion),
    FOREIGN KEY (id_modalidad) REFERENCES modalidad (id_modalidad),
    FOREIGN KEY (id_jornada) REFERENCES jornada (id_jornada),
    FOREIGN KEY (id_contrato) REFERENCES contrato (id_contrato)
);
CREATE TABLE ubicacion (
	id_ubicacion INT PRIMARY KEY,
    ubicacion VARCHAR(256)
);

CREATE TABLE modalidad (
	id_modalidad INT PRIMARY KEY,
    modalidad VARCHAR(10)
);

CREATE TABLE jornada (
	id_jornada INT PRIMARY KEY,
    jornada VARCHAR(10)
);

CREATE TABLE contrato (
	id_contrato INT PRIMARY KEY,
    contrato VARCHAR(10)
);

CREATE TABLE skills (
	id_skills INT PRIMARY KEY,
    otras_habilidades_soft_skills VARCHAR(256)
);

CREATE TABLE tecnologias (
	id_tecnologias INT PRIMARY KEY,
    tecnologías_aptitudes VARCHAR(256)
);

CREATE TABLE idiomas (
	id_idiomas INT PRIMARY KEY,
    idiomas VARCHAR(10)
);

CREATE TABLE beneficios (
	id_beneficios INT PRIMARY KEY,
	beneficios VARCHAR(256)
);

CREATE TABLE oferta_tecnologia (
	id_url VARCHAR(1000),
	id_tecnologias INT,
    PRIMARY KEY (id_url, id_tecnologias),
    FOREIGN KEY (id_url) REFERENCES ofertas (id_url),
    FOREIGN KEY (id_tecnologias) REFERENCES tecnologias (id_tecnologias)
);

CREATE TABLE oferta_skill (
    id_url VARCHAR(1000),
    id_skills INT,
    PRIMARY KEY (id_url, id_skills),
    FOREIGN KEY (id_url) REFERENCES ofertas (id_url),
    FOREIGN KEY (id_skills) REFERENCES skills (id_skills)
);

CREATE TABLE oferta_idioma (
    id_url VARCHAR(1000),
    id_idiomas INT,
    PRIMARY KEY (id_url, id_idiomas),
    FOREIGN KEY (id_url) REFERENCES ofertas (id_url),
    FOREIGN KEY (id_idiomas) REFERENCES idiomas (id_idiomas)
);

CREATE TABLE oferta_beneficio (
    id_url VARCHAR(1000),
    id_beneficios INT,
    PRIMARY KEY (id_url, id_beneficios),
    FOREIGN KEY (id_url) REFERENCES ofertas (id_url),
    FOREIGN KEY (id_beneficios) REFERENCES beneficios (id_beneficios)
);


-- CREATE TABLE estudios (
   -- id_estudios INT PRIMARY KEY,
   -- requisito VARCHAR(256)
-- );

-- CREATE TABLE oferta_estudios (
   -- id_url VARCHAR(1000),
   -- id_estudios INT,
   -- PRIMARY KEY (id_url, id_estudios),
   -- FOREIGN KEY (id_url) REFERENCES ofertas (id_url),
   -- FOREIGN KEY (id_estudios) REFERENCES estudios (id_estudios)
-- );
