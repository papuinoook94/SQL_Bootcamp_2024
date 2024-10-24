-- Insertar datos en la tabla 'campus'
INSERT INTO campus(sede, direccion)
VALUES
('Madrid', 'Paseo de Recoletos 15, 28004 Madrid'),
('Valencia', 'La Marina de Valencia, Muelle de la Aduana, s/n, 46024 Valencia'),
('Sevilla', 'Plaza de Villasís, 2, 41003 Sevilla'),
('Bilbao', 'Urazurrutia Kalea, 3, 48003 Bilbo, Bizkaia');

-- Insertar datos en la tabla 'cursos'
INSERT INTO cursos(vertical)
VALUES
('Desarrollo Web Full Stack'), 
('Data Science'), 
('Diseño UX/UI'), 
('Ciberseguridad'), 
('Marketing Digital'),
('Cloud & DevOps');

-- Insertar datos en la tabla 'modalidades'
INSERT INTO modalidades(modalidad)
VALUES 
('Online'), 
('Presencial');

--Insertar datos en la tabla 'modalidades_temp'
INSERT INTO modalidades_temp(modalidad_temp)
VALUES 
('Full-Time'), 
('Part-Time');

-- Insertar datos en la tabla 'promociones'
INSERT INTO promociones (id_promocion,promocion) VALUES
(1,'Septiembre'),
(2,'Febrero');

--Insertar datos en la tabla 'aulas'
INSERT INTO aulas(info_aula, id_campus, id_curso)
VALUES 
('Madrid_FS', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), (SELECT id_curso FROM cursos WHERE vertical = 'Desarrollo Web Full Stack')),
('Madrid_DS', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), (SELECT id_curso FROM cursos WHERE vertical = 'Data Science')), 
('Madrid_UX_UI', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), (SELECT id_curso FROM cursos WHERE vertical = 'Diseño UX/UI')),
('Madrid_Ciber', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), (SELECT id_curso FROM cursos WHERE vertical = 'Ciberseguridad')), 
('Madrid_MD', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), (SELECT id_curso FROM cursos WHERE vertical = 'Marketing Digital')), 
('Madrid_CD', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), (SELECT id_curso FROM cursos WHERE vertical = 'Cloud & DevOps')), 
('Valencia_FS', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), (SELECT id_curso FROM cursos WHERE vertical = 'Desarrollo Web Full Stack')), 
('Valencia_DS', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), (SELECT id_curso FROM cursos WHERE vertical = 'Data Science')), 
('Valencia_UX_UI', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), (SELECT id_curso FROM cursos WHERE vertical = 'Diseño UX/UI')),
('Valencia_Ciber', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), (SELECT id_curso FROM cursos WHERE vertical = 'Ciberseguridad')), 
('Valencia_MD', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), (SELECT id_curso FROM cursos WHERE vertical = 'Marketing Digital')), 
('Valencia_CD', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), (SELECT id_curso FROM cursos WHERE vertical = 'Cloud & DevOps')), 
('Sevilla_FS', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), (SELECT id_curso FROM cursos WHERE vertical = 'Desarrollo Web Full Stack')), 
('Sevilla_DS', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), (SELECT id_curso FROM cursos WHERE vertical = 'Data Science')), 
('Sevilla_UX_UI', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), (SELECT id_curso FROM cursos WHERE vertical = 'Diseño UX/UI')),
('Sevilla_Ciber', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), (SELECT id_curso FROM cursos WHERE vertical = 'Ciberseguridad')), 
('Sevilla_MD', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), (SELECT id_curso FROM cursos WHERE vertical = 'Marketing Digital')), 
('Sevilla_CD', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), (SELECT id_curso FROM cursos WHERE vertical = 'Cloud & DevOps')), 
('Bilbao_FS', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), (SELECT id_curso FROM cursos WHERE vertical = 'Desarrollo Web Full Stack')), 
('Bilbao_DS', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), (SELECT id_curso FROM cursos WHERE vertical = 'Data Science')), 
('Bilbao_UX_UI', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), (SELECT id_curso FROM cursos WHERE vertical = 'Diseño UX/UI')),
('Bilbao_Ciber', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), (SELECT id_curso FROM cursos WHERE vertical = 'Ciberseguridad')), 
('Bilbao_MD', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), (SELECT id_curso FROM cursos WHERE vertical = 'Marketing Digital')), 
('Bilbao_CD', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), (SELECT id_curso FROM cursos WHERE vertical = 'Cloud & DevOps'));


-- Insertar datos en la tabla 'alumnos'
INSERT INTO alumnos (id_alumno, nombre, email) VALUES
('1A', 'Jafet Casals', 'Jafet_Casals@gmail.com'),
('2A', 'Jorge Manzanares', 'Jorge_Manzanares@gmail.com'),
('3A', 'Onofre Adadia', 'Onofre_Adadia@gmail.com'),
('4A', 'Merche Prada', 'Merche_Prada@gmail.com'),
('5A', 'Pilar Abella', 'Pilar_Abella@gmail.com'),
('6A', 'Leoncio Tena', 'Leoncio_Tena@gmail.com'),
('7A', 'Odalys Torrijos', 'Odalys_Torrijos@gmail.com'),
('8A', 'Eduardo Caparrós', 'Eduardo_Caparrós@gmail.com'),
('9A', 'Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com'),
('10A', 'Clementina Santos', 'Clementina_Santos@gmail.com'),
('11A', 'Daniela Falcó', 'Daniela_Falcó@gmail.com'),
('12A', 'Abraham Vélez', 'Abraham_Vélez@gmail.com'),
('13A', 'Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com'),
('14A', 'Anita Heredia', 'Anita_Heredia@gmail.com'),
('15A', 'Eli Casas', 'Eli_Casas@gmail.com'),
('16A', 'Guillermo Borrego', 'Guillermo_Borrego@gmail.com'),
('17A', 'Sergio Aguirre', 'Sergio_Aguirre@gmail.com'),
('18A', 'Carlito Carrión', 'Carlito_Carrión@gmail.com'),
('19A', 'Haydée Figueroa', 'Haydée_Figueroa@gmail.com'),
('20A', 'Chita Mancebo', 'Chita_Mancebo@gmail.com'),
('21A', 'Joaquina Asensio', 'Joaquina_Asensio@gmail.com'),
('22A', 'Cristian Sarabia', 'Cristian_Sarabia@gmail.com'),
('23A', 'Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com'),
('24A', 'Desiderio Jordá', 'Desiderio_Jordá@gmail.com'),
('25A', 'Rosalina Llanos', 'Rosalina_Llanos@gmail.com'),
('26A', 'Amor Larrañaga', 'Amor_Larrañaga@gmail.com'),
('27A', 'Teodoro Alberola', 'Teodoro_Alberola@gmail.com'),
('28A', 'Cleto Plana', 'Cleto_Plana@gmail.com'),
('29A', 'Aitana Sebastián', 'Aitana_Sebastián@gmail.com'),
('30A', 'Dolores Valbuena', 'Dolores_Valbuena@gmail.com'),
('31A', 'Julie Ferrer', 'Julie_Ferrer@gmail.com'),
('32A', 'Mireia Cabañas', 'Mireia_Cabañas@gmail.com'),
('33A', 'Flavia Amador', 'Flavia_Amador@gmail.com'),
('34A', 'Albino Macias', 'Albino_Macias@gmail.com'),
('35A', 'Ester Sánchez', 'Ester_Sánchez@gmail.com'),
('36A', 'Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com'),
('37A', 'Loida Arellano', 'Loida_Arellano@gmail.com'),
('38A', 'Heraclio Duque', 'Heraclio_Duque@gmail.com'),
('39A', 'Herberto Figueras', 'Herberto_Figueras@gmail.com'),
('40A', 'Teresa Laguna', 'Teresa_Laguna@gmail.com'),
('41A', 'Estrella Murillo', 'Estrella_Murillo@gmail.com'),
('42A', 'Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com'),
('43A', 'Daniela Guitart', 'Daniela_Guitart@gmail.com'),
('44A', 'Timoteo Trillo', 'Timoteo_Trillo@gmail.com'),
('45A', 'Ricarda Tovar', 'Ricarda_Tovar@gmail.com'),
('46A', 'Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com'),
('47A', 'Daniel Rosselló', 'Daniel_Rosselló@gmail.com'),
('48A', 'Rita Olivares', 'Rita_Olivares@gmail.com'),
('49A', 'Cleto Montes', 'Cleto_Montes@gmail.com'),
('50A', 'Marino Castilla', 'Marino_Castilla@gmail.com'),
('51A', 'Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com'),
('52A', 'Noemí Vilanova', 'Noemí_Vilanova@gmail.com');

-- Insertar datos en la tabla 'profesores'
INSERT INTO profesores (id_profes,nombre,categoria) VALUES
('1B', 'Noa Yáñez', 'TA'),
('2B', 'Saturnina Benitez', 'TA'),
('3B', 'Anna Feliu', 'TA'),
('4B', 'Rosalva Ayuso', 'TA'),
('5B', 'Ana Sofía Ferrer', 'TA'),
('6B', 'Angélica Corral', 'TA'),
('7B', 'Ariel Lledó','TA'),
('8B', 'Mario Prats', 'LI'),
('9B', 'Luis Ángel Suárez', 'LI'),
('10B', 'María Dolores Diaz', 'LI'),
('11B', 'Miguel Nievas', 'LI'),
('12B', 'Alejandro Reyes', 'LI');

-- Insertar datos en la tabla 'staff'
INSERT INTO staff(id_staff, id_campus, nombre, rol)
VALUES
('1C', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), 'Carmen Redondo', 'Responsable del Campus'),
('2C', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), 'Arantxa González', 'Coordinador Student Experience'),
('3C', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), 'Adelaida Quevedo', 'Student Advisor'),
('4C', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), 'Eva Fernández', 'Secretaría-Mañana'),
('5C', (SELECT id_campus FROM campus WHERE sede = 'Madrid'), 'Felipe García', 'Secretaría-Tarde'),
('6C', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), 'Fermín Trujillo', 'Responsable del Campus'),
('7C', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), 'Enrique Pastor', 'Coordinador Student Experience'),
('8C', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), 'Belén López', 'Student Advisor'),
('9C', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), 'Emilio Delgado', 'Secretaría-Mañana'),
('10C', (SELECT id_campus FROM campus WHERE sede = 'Valencia'), 'Vicenta Benito', 'Secretaría-Tarde'),
('11C', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), 'Mariano Delgado', 'Responsable del Campus'),
('12C', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), 'Marisa Benito', 'Coordinador Student Experience'),
('13C', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), 'Natalia Cuesta', 'Student Advisor'),
('14C', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), 'Mauricio Hidalgo', 'Secretaría-Mañana'),
('15C', (SELECT id_campus FROM campus WHERE sede = 'Sevilla'), 'Lucía Álvarez', 'Secretaría-Tarde'),
('16C', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), 'Amaia Zugasti', 'Responsable del Campus'),
('17C', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), 'Rafael Quirós', 'Coordinador Student Experience'),
('18C', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), 'Merche Fernández', 'Student Advisor'),
('19C', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), 'Asier López', 'Secretaría-Mañana'),
('20C', (SELECT id_campus FROM campus WHERE sede = 'Bilbao'), 'Iker Casillas', 'Secretaría-Tarde');


-- Insertar información en la tabla 'alumnos_cursando'
INSERT INTO alumnos_cursando(id_alumno, id_curso, id_campus , id_aula, id_promocion, fecha_comienzo, id_modalidad, id_modalidad_temp)
VALUES
((SELECT id_alumno FROM alumnos where))






















-- Insertar información en la tabla 'profesores_impartiendo'
INSERT INTO profesores_impartiendo(id_profes, id_curso, id_campus, categoria, id_aula, id_promocion, id_modalidad, id_modalidad_temp)
VALUES
('1B', 2, 1, 'TA', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 2) , 1, 2, 1),
('2B', 2, 1, 'TA',(SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 2) , 1, 2, 1),
('3B', 1, 1,'TA', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 1) , 1,2,1),
('4B', 1,2, 'TA', (SELECT id_aula FROM aulas WHERE id_campus = 2 AND id_curso = 1) ,1,2,1),
('5B', 1,2 , 'TA', (SELECT id_aula FROM aulas WHERE id_campus = 2 AND id_curso = 1) , 2, 2,1),
('6B',1, 1, 'TA', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 1) , 2,2,2),
('7B', 2, 1, 'TA', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 2) , 1,2,1),
('8B',1, 2, 'LI', (SELECT id_aula FROM aulas WHERE id_campus = 2 AND id_curso = 1) ,2, 1, 2),
('9B', 1,1 , 'LI', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 1), 1, 1, 1),
('10B',2,1 , 'LI', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 2) , 1,1,2),
('11B', 2, 1, 'LI', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 2) , 1, 2, 1),
('12B', 1, 1 , 'LI', (SELECT id_aula FROM aulas WHERE id_campus = 1 AND id_curso = 1), 1, 2 ,1);



