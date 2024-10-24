--Ejemplo 1
SELECT t1.info_aula, t2.sede, t3.vertical 
FROM aulas as t1
INNER JOIN campus as t2 ON t1.id_campus = t2.id_campus
INNER JOIN cursos as t3 ON t3.id_curso = t1.id_curso
WHERE t2.sede = 'Madrid'

--Ejemplo 2
SELECT t1.id_profes, t7.nombre, t7.categoria,t2.vertical, t3.sede, t5.modalidad, t4.promocion, t6.modalidad_temp, t8.info_aula
FROM profesores_impartiendo AS t1
INNER JOIN cursos AS t2 ON t1.id_curso = t2.id_curso 
INNER JOIN campus AS t3 ON t1.id_campus= t3.id_campus
INNER JOIN promociones AS t4 ON t1.id_promocion =t4.id_promocion
INNER JOIN modalidades AS t5 ON t1.id_modalidad = t5.id_modalidad
INNER JOIN modalidades_temp AS t6 ON t1.id_modalidad_temp = t6.id_modalidad_temp
INNER JOIN profesores AS t7 ON t1.id_profes = t7.id_profes
INNER JOIN aulas AS t8 ON t1.id_aula = t8.id_aula