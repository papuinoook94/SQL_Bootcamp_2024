--Ejemplo 1 (adaptación para una mejor visualizacion de la tabla 'profesores_impartiendo')
SELECT t1.id_profes, t1.id_curso, t1.id_campus, t7.nombre, t7.categoria,t2.vertical, t3.sede, t5.modalidad, t4.promocion, t6.modalidad_temp, t8.info_aula
FROM profesores_impartiendo AS t1
INNER JOIN cursos AS t2 ON t1.id_curso = t2.id_curso 
INNER JOIN campus AS t3 ON t1.id_campus= t3.id_campus
INNER JOIN promociones AS t4 ON t1.id_promocion =t4.id_promocion
INNER JOIN modalidades AS t5 ON t1.id_modalidad = t5.id_modalidad
INNER JOIN modalidades_temp AS t6 ON t1.id_modalidad_temp = t6.id_modalidad_temp
INNER JOIN profesores AS t7 ON t1.id_profes = t7.id_profes
INNER JOIN aulas AS t8 ON t1.id_aula = t8.id_aula

-- Ejemplo 2 (adaptación para una mejor visualizacion de la tabla 'alumnos_cursando')
SELECT t1.id_alumno, t1.id_curso, t1.fecha_comienzo, t2.nombre, t2.email, t3.vertical, t4.sede, t5.info_aula, t6.promocion, t7.modalidad, t8.modalidad_temp
FROM alumnos_cursando AS t1
INNER JOIN alumnos AS t2 ON t1.id_alumno = t2.id_alumno
INNER JOIN cursos AS t3 ON t3.id_curso = t1.id_curso
INNER JOIN campus AS t4 ON t4.id_campus = t1.id_campus
INNER JOIN aulas AS t5 ON t5.id_aula = t1.id_aula
INNER JOIN promociones AS t6 ON t6.id_promocion = t1.id_promocion
INNER JOIN modalidades AS t7 ON t7.id_modalidad = t1.id_modalidad
INNER JOIN modalidades_temp AS t8 ON t8.id_modalidad_temp = t1.id_modalidad_temp

--Ejemplo 3 (adaptación para una mejor visualizacion de la tabla 'proyecto_alumno')
SELECT t1.id_alumno, t1.id_proyecto, t2.nombre, t2.email, t3.nombre, t1.estado
FROM proyecto_alumnos AS t1
INNER JOIN alumnos AS t2 ON t1.id_alumno = t2.id_alumno
INNER JOIN proyectos AS t3 ON t3.id_proyecto = t1.id_proyecto

--Ejemplo 4
SELECT t1.info_aula, t2.sede, t3.vertical 
FROM aulas as t1
INNER JOIN campus as t2 ON t1.id_campus = t2.id_campus
INNER JOIN cursos as t3 ON t3.id_curso = t1.id_curso

--Ejemplo 5: Mostramos el detalle de las relaciones profesor-alumno
/*
Hay 89 registros, mientras que haciendo un count de los alumnos, sabemos que hay 52.
Esta diferencia se debe a que aparecen los profesores que no tienen alumnos, los alumnos con sus correspondientes profesores 
(Leader Instructors y/o Teacher Assistants, que pueden ser varios), los alumnos que no tienen profesores (esto en un
caso real, suponiendo que el almacenamiento de todos los profesores es correcto, no ocurriría ya que se tendrían todos los profesores registrados
para los distintos cursos impartidos), etc.
*/
SELECT *
FROM 
(
    SELECT t1.id_profes, t7.nombre as nombre_profe, t1.id_curso, t1.id_promocion, t1.id_campus, t1.id_modalidad, t1.id_modalidad_temp
    FROM profesores_impartiendo AS t1
    INNER JOIN cursos AS t2 ON t1.id_curso = t2.id_curso 
    INNER JOIN campus AS t3 ON t1.id_campus= t3.id_campus
    INNER JOIN promociones AS t4 ON t1.id_promocion =t4.id_promocion
    INNER JOIN modalidades AS t5 ON t1.id_modalidad = t5.id_modalidad
    INNER JOIN modalidades_temp AS t6 ON t1.id_modalidad_temp = t6.id_modalidad_temp
    INNER JOIN profesores AS t7 ON t1.id_profes = t7.id_profes
    INNER JOIN aulas AS t8 ON t1.id_aula = t8.id_aula) as profes_aux
    
FULL JOIN

(
    SELECT t1.id_alumno, t2.nombre as nombre_alumno, t1.id_curso, t1.id_campus, t1.id_promocion, t1.id_modalidad, t1.id_modalidad_temp
    FROM alumnos_cursando AS t1
    INNER JOIN alumnos AS t2 ON t1.id_alumno = t2.id_alumno
    INNER JOIN cursos AS t3 ON t3.id_curso = t1.id_curso
    INNER JOIN campus AS t4 ON t4.id_campus = t1.id_campus
    INNER JOIN aulas AS t5 ON t5.id_aula = t1.id_aula
    INNER JOIN promociones AS t6 ON t6.id_promocion = t1.id_promocion
    INNER JOIN modalidades AS t7 ON t7.id_modalidad = t1.id_modalidad
    INNER JOIN modalidades_temp AS t8 ON t8.id_modalidad_temp = t1.id_modalidad_temp) AS alums_aux
ON (
    profes_aux.id_curso = alums_aux.id_curso AND
    profes_aux.id_campus = alums_aux.id_campus AND
    profes_aux.id_promocion = alums_aux.id_promocion AND
    profes_aux.id_modalidad = alums_aux.id_modalidad AND
    profes_aux.id_modalidad_temp = alums_aux.id_modalidad_temp
)