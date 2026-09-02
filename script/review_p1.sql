CREATE TABLE estudiantes(
    id SERIAL,
    nombre VARCHAR(60),
    edad INT,
    genero CHAR(1),
    promedio FLOAT,
    altura NUMERIC(3, 2),
    fecha_ingreso DATE,
    hora_ingreso TIME,
    fecha_hora_registro TIMESTAMP,
    duracion_tests INTERVAL,
    analisis_perfil TEXT,
    activo BOOLEAN
);

INSERT INTO estudiantes (
    nombre, edad, promedio, altura, genero, fecha_ingreso, 
    hora_ingreso, fecha_hora_registro, duracion_tests, analisis_perfil, activo
) VALUES
('Camila Rodríguez', 21, 4.35, 1.62, 'F', '2023-01-15', '08:15:00', '2023-01-10 14:30:00', '02:15:00', 'Estudiante destacada en el área de lógica de programación y bases de datos.', true),
('Mateo Gómez', 19, 3.80, 1.75, 'M', '2024-02-01', '09:00:00', '2024-01-20 10:15:00', '01:45:00', 'Demuestra alto rendimiento en razonamiento cuantitativo y pensamiento crítico.', true),
('Valeria Martínez', 22, 4.80, 1.68, 'F', '2022-08-10', '07:30:00', '2022-08-01 09:00:00', '03:10:00', 'Perfil analítico avanzado con excelente capacidad de resolución de problemas.', true),
('Santiago López', 20, 3.20, 1.80, 'M', '2023-08-15', '10:30:00', '2023-08-05 16:20:00', '01:30:00', 'Requiere refuerzo en algoritmia básica, pero presenta buena asistencia.', true),
('Sofía Hernández', 18, 4.10, 1.58, 'F', '2024-01-20', '08:00:00', '2024-01-12 11:45:00', '02:00:00', 'Participación activa y constantes entregas a tiempo en proyectos grupales.', true),
('Lucas Pérez', 23, 2.95, 1.72, 'M', '2021-02-01', '14:00:00', '2021-01-15 08:30:00', '00:50:00', 'Rendimiento irregular durante el último periodo académico.', false),
('Isabella Pérez', 20, 4.50, 1.65, 'F', '2023-01-15', '08:30:00', '2023-01-08 13:10:00', '02:40:00', 'Excelente manejo de estructuras de datos y metodologías ágiles.', true),
('Alejandro Silva', 24, 3.65, 1.85, 'M', '2021-08-10', '11:15:00', '2021-07-28 15:00:00', '01:55:00', 'Habilidades sociales destacadas y buen liderazgo en equipos.', true),
('Mariana Torres', 19, 4.00, 1.60, 'F', '2024-02-01', '09:45:00', '2024-01-25 17:00:00', '02:10:00', 'Perfil constante con fuerte inclinación al desarrollo frontend.', true),
('Diego Ramírez', 21, 3.40, 1.78, 'M', '2022-08-10', '13:00:00', '2022-08-02 12:00:00', '01:20:00', 'Compromiso medio con las evaluaciones teóricas.', true),
('Gabriela Morales', 22, 4.65, 1.70, 'F', '2022-01-18', '07:45:00', '2022-01-10 10:00:00', '03:00:00', 'Capacidad sobresaliente de abstracción y análisis de datos.', true),
('Daniel Castro', 20, 3.85, 1.74, 'M', '2023-08-15', '08:15:00', '2023-08-01 11:30:00', '02:05:00', 'Buen desempeño práctico en laboratorios de software.', true),
('Lucía Vargas', 18, 4.25, 1.63, 'F', '2024-01-20', '10:00:00', '2024-01-14 09:20:00', '02:25:00', 'Alto interés en sistemas distribuidos y arquitectura de datos.', true),
('Joaquín Mendoza', 25, 3.10, 1.82, 'M', '2020-08-10', '15:30:00', '2020-07-30 14:15:00', '01:10:00', 'Estudiante de último semestre con carga académica reducida.', false),
('Elena Ortiz', 21, 4.90, 1.67, 'F', '2023-01-15', '08:00:00', '2023-01-05 08:00:00', '03:30:00', 'Matrícula de honor por promedio sobresaliente en la facultad.', true),
('Samuel Ruiz', 19, 3.50, 1.76, 'M', '2024-02-01', '11:00:00', '2024-01-22 16:40:00', '01:50:00', 'Buen progreso en materias de formación básica.', true),
('Victoria Navarro', 20, 3.75, 1.61, 'F', '2023-08-15', '09:15:00', '2023-08-03 10:10:00', '02:00:00', 'Habilidades de comunicación y trabajo colaborativo bien desarrolladas.', true),
('Nicolás Benítez', 22, 4.15, 1.79, 'M', '2022-08-10', '08:30:00', '2022-07-29 13:50:00', '02:15:00', 'Enfoque hacia redes y seguridad informática.', true),
('Daniela Flores', 19, 4.40, 1.64, 'F', '2024-01-20', '07:30:00', '2024-01-10 15:25:00', '02:50:00', 'Rapidez en la resolución de exámenes lógicos y matemáticos.', true),
('Tomás Reyes', 23, 2.80, 1.81, 'M', '2021-02-01', '16:00:00', '2021-01-20 11:00:00', '00:45:00', 'En proceso de seguimiento académico por bajo promedio.', false),
('Camila Gutiérrez', 21, 3.90, 1.69, 'F', '2023-01-15', '10:30:00', '2023-01-11 12:00:00', '02:00:00', 'Perseverante y orientada a detalles en documentación técnica.', true),
('Agustín Aguilar', 20, 4.05, 1.77, 'M', '2023-08-15', '08:45:00', '2023-08-07 14:10:00', '02:10:00', 'Interés en investigación sobre inteligencia artificial.', true),
('Renata Domínguez', 18, 4.70, 1.59, 'F', '2024-02-01', '08:00:00', '2024-01-18 09:30:00', '03:05:00', 'Puntaje destacado en las pruebas de ingreso nacional.', true),
('Matías Peralta', 24, 3.30, 1.83, 'M', '2021-08-10', '13:30:00', '2021-08-01 10:45:00', '01:25:00', 'Combina estudios con actividad laboral a tiempo parcial.', true),
('Paula Ramos', 22, 4.12, 1.66, 'F', '2022-01-18', '09:00:00', '2022-01-12 16:00:00', '02:20:00', 'Consistencia académica a lo largo de los semestres evaluados.', true),
('Benjamin Medina', 19, 3.60, 1.73, 'M', '2024-01-20', '11:30:00', '2024-01-15 11:15:00', '01:40:00', 'Participa activamente en talleres extracurriculares.', true),
('Antonia Vega', 20, 4.55, 1.62, 'F', '2023-08-15', '07:45:00', '2023-08-02 08:50:00', '02:55:00', 'Perfil autodidacta con dominio de herramientas avanzadas.', true),
('Thiago Guerrero', 21, 3.15, 1.76, 'M', '2023-01-15', '14:15:00', '2023-01-09 17:30:00', '01:15:00', 'Requiere tutorías de apoyo en ingeniería de software.', true),
('Carolina Campos', 23, 4.28, 1.68, 'F', '2021-08-10', '08:15:00', '2021-07-25 10:20:00', '02:35:00', 'Gran capacidad para el diseño de interfaces y usabilidad.', true),
('Bruno Delgado', 18, 3.95, 1.80, 'M', '2024-02-01', '10:15:00', '2024-01-21 13:00:00', '02:05:00', 'Ingreso reciente con excelente adaptabilidad.', true),
('Esperanza Cabrera', 22, 3.70, 1.60, 'F', '2022-08-10', '12:00:00', '2022-08-03 15:40:00', '01:50:00', 'Cumplimiento adecuado de los objetivos académica establecidos.', true),
('Gabriel Molina', 20, 4.45, 1.78, 'M', '2023-01-15', '09:00:00', '2023-01-07 09:10:00', '02:45:00', 'Gran agilidad en resolución de algoritmos complejos.', true),
('Catalina Fuentes', 19, 4.02, 1.63, 'F', '2024-01-20', '08:30:00', '2024-01-13 10:05:00', '02:15:00', 'Excelente predisposición para proyectos interdisciplinarios.', true),
('Emilio Sandoval', 25, 2.70, 1.75, 'M', '2020-02-01', '17:00:00', '2020-01-18 16:50:00', '00:40:00', 'Inactivo por retiro voluntario del ciclo lectivo.', false),
('Fernanda Ríos', 21, 4.60, 1.67, 'F', '2023-08-15', '07:30:00', '2023-08-04 11:20:00', '03:15:00', 'Destacada participación en eventos y ferias de ciencia.', true),
('Gonzalo Valenzuela', 22, 3.55, 1.84, 'M', '2022-01-18', '10:45:00', '2022-01-11 14:00:00', '01:45:00', 'Buen desempeño en pruebas grupales y laboratorios.', true),
('Juana Ibáñez', 20, 3.88, 1.61, 'F', '2023-01-15', '11:00:00', '2023-01-06 12:35:00', '02:00:00', 'Organizada y metódica en sus entregas académicas.', true),
('Felipe Suáres', 19, 4.18, 1.77, 'M', '2024-02-01', '08:45:00', '2024-01-24 08:30:00', '02:20:00', 'Capacidad analítica por encima del promedio de la cohorte.', true),
('Martina Miranda', 23, 4.30, 1.65, 'F', '2021-08-10', '09:30:00', '2021-07-27 10:00:00', '02:30:00', 'Habilidades consolidadas en gestión de bases de datos.', true),
('Adrián Marín', 18, 3.45, 1.79, 'M', '2024-01-20', '13:15:00', '2024-01-16 17:15:00', '01:35:00', 'En proceso de adaptación a la carga horaria universitaria.', true),
('Ximena Roldán', 21, 4.75, 1.70, 'F', '2023-08-15', '08:00:00', '2023-08-06 09:40:00', '03:05:00', 'Perfil de investigación con alto rendimiento técnico.', true),
('Maximiliano Arias', 24, 3.05, 1.82, 'M', '2021-02-01', '15:00:00', '2021-01-19 15:10:00', '01:05:00', 'Bajo rendimiento en evaluaciones escritas de teoría.', false),
('Florencia Correa', 20, 4.10, 1.64, 'F', '2023-01-15', '10:00:00', '2023-01-10 11:50:00', '02:10:00', 'Demuestra constante iniciativa en resolución de problemas.', true),
('Ignacio Montero', 22, 3.92, 1.76, 'M', '2022-08-10', '09:15:00', '2022-07-31 13:00:00', '02:00:00', 'Desempeño equilibrado en ciencias básicas y aplicadas.', true),
('Constanza Paredes', 19, 4.42, 1.62, 'F', '2024-02-01', '07:45:00', '2024-01-23 10:45:00', '02:40:00', 'Gran dominio sintáctico y de análisis en lenguajes técnicos.', true),
('Esteban Salgado', 21, 3.35, 1.78, 'M', '2023-08-15', '12:30:00', '2023-08-08 16:30:00', '01:25:00', 'Progreso moderado durante el presente semestre.', true),
('Regina Serrano', 18, 4.20, 1.66, 'F', '2024-01-20', '08:15:00', '2024-01-15 08:20:00', '02:15:00', 'Destaca por su rapidez analítica en entornos prácticos.', true),
('Simón Bravo', 23, 3.78, 1.81, 'M', '2022-01-18', '11:00:00', '2022-01-09 14:20:00', '01:55:00', 'Perfil colaborativo y con buenas notas en proyectos.', true),
('Julieta Prieto', 20, 4.68, 1.63, 'F', '2023-01-15', '08:30:00', '2023-01-07 10:30:00', '03:00:00', 'Altas competencias académicas e interés en posgrados.', true),
('Álvaro Durán', 22, 3.25, 1.74, 'M', '2022-08-10', '14:45:00', '2022-08-01 11:00:00', '01:15:00', 'Asistencia regular a clases pero baja entrega de tareas.', true);

-- ==================================================================================== --
-- ====================================== SELECT ====================================== --
-- ==================================================================================== --

-- Obtener el nombre, edad y promedio de todos los estudiantes que se encuentren activos.
SELECT nombre, edad, promedio
FROM estudiantes
WHERE activo= TRUE;

-- Listar todos los estudiantes del género femenino que tengan un promedio mayor o igual a 4.5.

SELECT nombre, genero, promedio
FROM estudiantes
WHERE promedio >= 4.5 AND genero = 'F';

-- Consultar los estudiantes ingresados en el año 2024, ordenados de forma descendente por su fecha de ingreso.
SELECT nombre, fecha_ingreso
FROM estudiantes
WHERE EXTRACT (YEAR FROM fecha_ingreso)= 2024
ORDER BY fecha_ingreso DESC;

-- Obtener el promedio de edad y el promedio general de calificaciones de todos los estudiantes registrados.
SELECT 
    ROUND (AVG (edad):: NUMERIC, 2) AS promedio_edad,
    ROUND (AVG (promedio):: NUMERIC, 2) AS promedio_general
FROM estudiantes;

-- Contar cuántos estudiantes hay registrados por cada género.
SELECT
    genero,
    COUNT(*) AS total_estudiantes
FROM estudiantes
GROUP BY genero;

-- Listar los 5 estudiantes con los promedios más altos de toda la tabla.
SELECT nombre, promedio
FROM estudiantes
ORDER BY promedio DESC
LIMIT 5;
-- Seleccionar los estudiantes cuya duración de tests haya sido mayor a 2 horas y media.
SELECT nombre, duracion_tests
FROM estudiantes
WHERE duracion_tests > '2 hours 30 minutes'::INTERVAL;

-- Buscar a los estudiantes cuyo análisis de perfil contenga la palabra "bases de datos" o "algoritmos".
SELECT nombre, analisis_perfil
    FROM estudiantes
WHERE analisis_perfil ILIKE '%bases de datos%' 
   OR analisis_perfil ILIKE '%algoritmos%';

-- Calcular la altura máxima y mínima registrada entre los estudiantes hombres.
SELECT 
    MAX(altura) AS altura_maximo,
    MIN(altura) AS altura_minimo
FROM estudiantes
WHERE genero='M'

--Mostrar el nombre, fecha e hora exacta de registro de los estudiantes que ingresaron antes de las 09:00:00 AM.
    SELECT nombre, fecha_ingreso, hora_ingreso
    FROM estudiantes
    WHERE hora_ingreso< '09:00:00';

-- ==================================================================================== --
-- ====================================== UPDATE ====================================== --
-- ==================================================================================== --

-- Cambiar el estado a inactivo para el estudiante con id 6.
UPDATE estudiantes
SET activo=FALSE
WHERE id = 6

-- Incrementar en 0.2 el promedio de todos los estudiantes que tengan un promedio menor a 3.0.
UPDATE estudiantes 
SET promedio = promedio + 0.2
WHERE promedio < 3


-- Actualizar la hora de ingreso a 08:00:00 para todos los estudiantes que ingresaron el día 2024-02-01.
UPDATE estudiantes
SET hora_ingreso = '08:00:00'
WHERE fecha_ingreso = '2024-02-01'

-- Modificar el análisis de perfil del estudiante con id 15 para agregar la anotación: "Graduado con honores académicos.".
UPDATE estudiantes
SET analisis_perfil = 'Graduado con honores académicos.'
WHERE id = 15

-- Cambiar el género a F y actualizar la altura a 1.65 para un estudiante específico cuyo ID sea 20.
UPDATE estudiantes
SET genero = 'F',
altura = 1.65
WHERE id = 20;

-- Desactivar a todos los estudiantes registrados antes del año 2022 que tengan un promedio inferior a 3.5.
SELECT * FROM estudiantes
WHERE fecha_ingreso <'2022-02-01' AND promedio < 3.5;
-- -------------------------------------------------------------
UPDATE estudiantes
SET activo = FALSE
WHERE fecha_ingreso <'2022-02-01' AND promedio < 3.5;
-- -------------------------------------------------------------
SELECT * FROM estudiantes
WHERE fecha_ingreso <'2022-02-01' AND promedio < 3.5;

-- Ajustar la duración de los tests a 2 horas para todos los estudiantes que actualmente tengan registrada una duración inferior a 1 hora.
SELECT * FROM estudiantes
WHERE duracion_tests < '01:00:00';
-- -------------------------------------------------------------
UPDATE estudiantes
SET duracion_tests = '02:00:00'
WHERE duracion_tests < '01:00:00';
-- -------------------------------------------------------------
SELECT * FROM estudiantes
WHERE duracion_tests < '01:00:00';

-- Aumentar la edad en 1 año a todos los estudiantes que ingresaron en el año 2021.
SELECT * FROM estudiantes
WHERE fecha_ingreso >= '2021-01-01' AND fecha_ingreso < '2022-01-01';
-- -------------------------------------------------------------
UPDATE estudiantes
SET edad = edad + 1
WHERE fecha_ingreso >= '2021-01-01' AND fecha_ingreso < '2022-01-01';
-- -------------------------------------------------------------
SELECT * FROM estudiantes
WHERE fecha_ingreso >= '2021-01-01' AND fecha_ingreso < '2022-01-01';
-- Limpiar o establecer como NULL el campo analisis_perfil para los estudiantes inactivos.
SELECT * FROM estudiantes
WHERE activo = false;
-- -------------------------------------------------------------
UPDATE estudiantes
SET analisis_perfil = NULL
WHERE activo = false;
-- -------------------------------------------------------------
SELECT * FROM estudiantes
WHERE activo = false;

-- Actualizar el promedio a 5.0 para el estudiante que tenga la fecha de registro más antigua de la base de datos.
SELECT * FROM estudiantes
WHERE fecha_hora_registro = (
    SELECT MIN(fecha_hora_registro)
    FROM estudiantes
);
-- -------------------------------------------------------------
UPDATE estudiantes
SET promedio = 5.0
WHERE fecha_hora_registro = (
    SELECT MIN(fecha_hora_registro)
    FROM estudiantes
);

-- -------------------------------------------------------------
SELECT * FROM estudiantes
WHERE fecha_hora_registro = (
    SELECT MIN(fecha_hora_registro)
    FROM estudiantes
);

-- ==================================================================================== --
-- ====================================== DELETE ====================================== --
-- ==================================================================================== --
 
-- Eliminar el registro del estudiante con id 34.
SELECT * FROM estudiantes
WHERE id = 34;

DELETE FROM estudiantes
WHERE id = 34; 

SELECT * FROM estudiantes
WHERE id = 34;

-- Borrar todos los estudiantes que estén inactivos.
SELECT * FROM estudiantes
WHERE activo = FALSE;

DELETE FROM estudiantes
WHERE activo = FALSE; 

SELECT * FROM estudiantes
WHERE activo = FALSE;

-- Eliminar a los estudiantes cuyo promedio sea estrictamente menor a 2.5.
SELECT * FROM estudiantes
WHERE promedio < 2.5; 

DELETE FROM estudiantes
WHERE promedio < 2.5; 

SELECT * FROM estudiantes
WHERE promedio < 2.5; 

-- Borrar las filas de estudiantes cuya fecha de ingreso sea anterior al '2021-01-01'.
SELECT * FROM estudiantes
WHERE fecha_ingreso < '2021-01-01';

DELETE FROM estudiantes
WHERE fecha_ingreso < '2021-01-01';

SELECT * FROM estudiantes
WHERE fecha_ingreso < '2021-01-01';

-- Eliminar a los estudiantes del género masculino que tengan una altura inferior a 1.60 m.
SELECT * FROM estudiantes
WHERE genero = 'M' AND altura < 1.60;

DELETE FROM estudiantes
WHERE genero = 'M' AND altura < 1.60;

SELECT * FROM estudiantes
WHERE genero = 'M' AND altura < 1.60;

-- Borrar los registros de estudiantes ingresados en el año 2024 que se encuentren inactivos.
SELECT * FROM estudiantes
WHERE EXTRACT(YEAR FROM fecha_ingreso) = 2024 AND activo = FALSE;

DELETE FROM estudiantes
WHERE EXTRACT(YEAR FROM fecha_ingreso) = 2024 AND activo = FALSE;

SELECT * FROM estudiantes
WHERE EXTRACT(YEAR FROM fecha_ingreso) = 2024 AND activo = FALSE;

-- Eliminar a los estudiantes cuya duración de tests sea menor a 45 minutos.
SELECT * FROM estudiantes
WHERE duracion_tests < '00:45:00';

DELETE FROM estudiantes
WHERE duracion_tests < '00:45:00';

SELECT * FROM estudiantes
WHERE duracion_tests < '00:45:00';

-- Borrar a todos los estudiantes cuyo nombre comience con la letra 'E'.
SELECT * FROM estudiantes
WHERE nombre LIKE 'E%';

DELETE FROM estudiantes
WHERE nombre LIKE 'E%';

SELECT * FROM estudiantes
WHERE nombre LIKE 'E%';

-- Eliminar a los estudiantes activos que ingresaron antes del año 2023 y cuyo promedio sea menor a 3.5.
 SELECT * FROM estudiantes
 WHERE activo = FALSE AND fecha_ingreso < '2023-01-01' AND promedio < 3.5;

DELETE FROM estudiantes
WHERE activo = FALSE AND fecha_ingreso < '2023-01-01' AND promedio < 3.5;

 SELECT FROM estudiantes
 WHERE activo = FALSE AND fecha_ingreso < '2023-01-01' AND promedio < 3.5;

--Vaciar completamente la tabla estudiantes eliminando todos sus registros.
SELECT * FROM estudiantes;
DELETE  FROM estudiantes;
SELECT * FROM estudiantes;