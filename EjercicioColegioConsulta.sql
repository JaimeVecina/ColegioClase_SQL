/* Modificar una tabla - Alter Table 
Para insertar a la tabla alumno el campo apellido2 bastaría con lanzar la instrucción:*/

ALTER TABLE alumno ADD COLUMN apellido2 VARCHAR(25) AFTER apellido;
UPDATE alumno SET apellido2 = 'Palazon' WHERE id = 1;
UPDATE alumno SET apellido2 = 'Gomez' WHERE id = 2;
UPDATE alumno SET apellido2 = 'Leost' WHERE id = 3;
/* UPDATE alumno SET apellido2 = 'Martin' WHERE nombre = 'Maria' and apellido =
'Gutierrez';
Si actualizamos usando los campos nombre y apellido puede ocurrir que actualicemos
varios alumnos que se llamen igual. Es mejor localizar a los registros por su clave primaria.*/

/*En este ejemplo se muestran las calificaciones de los alumnos. Es necesario usar las tablas alumno, nota y
asignatura . Se ha ordenado por apellido mediante ORDER BY. Por defecto el resultado obtenido es en
orden ascendente.*/
SELECT a.nombre, asig.nombre as asignatura,
n.calificacion
FROM alumno a
INNER JOIN nota n ON a.id =
n.alumno_id
INNER JOIN asignatura asig ON asig.id
= n.asignatura_id
ORDER BY apellido;

/*Sobre los campos de texto se puede emplear el comando LIKE. En la siguiente consulta se muestran los
alumnos cuyo nombre empieza por 'Ma' o bien su apellido contiene los caracteres 'ar' .*/
SELECT a.nombre, a.apellido
FROM alumno a
WHERE a.nombre LIKE 'Ma%' OR a.apellido LIKE '%ar%'

SELECT a.nombre, l.puesto
FROM alumno a
LEFT OUTER JOIN labor_extra l ON a.id = l.alumno_id


