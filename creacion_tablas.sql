-- Tabla aulas
CREATE TABLE aulas (
    id_aulas SERIAL PRIMARY KEY,
    id_campus INT REFERENCES campus(id_campus),
    id_curso INT REFERENCES cursos(id_curso),
    info_aula VARCHAR(100)
);

-- Tabla campus
CREATE TABLE campus (
    id_campus SERIAL PRIMARY KEY,
    sede VARCHAR(100),
    direccion VARCHAR(255)
);

-- Tabla cursos
CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    vertical VARCHAR(100)
);

-- Tabla modalidades
CREATE TABLE modalidades (
    id_modalidad SERIAL PRIMARY KEY,
    modalidad VARCHAR(50)
);

-- Tabla modalidades_temp
CREATE TABLE modalidades_temp (
    id_modalidad_temp SERIAL PRIMARY KEY,
    modalidad_temporal VARCHAR(50)
);

-- Tabla promociones
CREATE TABLE promociones (
    id_promocion SERIAL PRIMARY KEY,
    promocion VARCHAR(100)
);

-- Tabla proyectos
CREATE TABLE proyectos (
    id_proyecto INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Tabla staff
CREATE TABLE staff (
    id_staff VARCHAR(15) PRIMARY KEY,
    id_campus INT REFERENCES campus(id_campus),
    nombre VARCHAR(100),
    rol VARCHAR(50)
);

-- Tabla profesores
CREATE TABLE profesores (
    id_profes VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(10)
);


-- Tabla alumnos
CREATE TABLE alumnos (
    id_alumno VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

--Tabla profesores_impartiendo
CREATE TABLE profesores_impartiendo (
    id_profes VARCHAR(15) REFERENCES profesores(id_profes),
    id_curso INT REFERENCES cursos(id_curso),
    id_campus INT REFERENCES campus(id_campus),
    categoria VARCHAR(10),
    id_aula INT REFERENCES aulas(id_aula),
    id_promocion INT REFERENCES promociones(id_promocion),
    id_modalidad INT REFERENCES modalidades(id_modalidad),
    id_modalidad_temp INT REFERENCES modalidades_temp(id_modalidad_temp),
    PRIMARY KEY (id_profes, id_curso, id_campus)
);

-- Tabla alumnos_cursando
CREATE TABLE alumnos_cursando (
    id_alumno VARCHAR(15) REFERENCES alumnos(id_alumno),
    id_curso INT REFERENCES cursos(id_curso),
    id_campus INT REFERENCES campus(id_campus),
    id_aula INT REFERENCES aulas(id_aula),
    id_promocion INT REFERENCES promociones(id_promocion),
    fecha_comienzo DATE,
    id_modalidad INT REFERENCES modalidades(id_modalidad),
    id_modalidad_temp INT REFERENCES modalidades_temp(id_modalidad_temp),
    PRIMARY KEY (id_alumno, id_curso)
);

-- Tabla proyecto_alumno
CREATE TABLE proyecto_alumnos (
    id_alumno VARCHAR(15) REFERENCES alumnos(id_alumno),
    id_proyecto INT REFERENCES proyectos(id_proyecto),
    estado VARCHAR(50),
    PRIMARY KEY (id_alumno, id_proyecto)   
);










