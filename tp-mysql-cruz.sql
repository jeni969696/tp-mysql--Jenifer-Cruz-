-------------------------------------------------
--Ejercicio 1 – Crear Base de Datos
--Crear una base de datos llamada veterinaria_patitas_felices.

DROP DATABASE IF EXISTS veterinaria_patitas_felices;
CREATE DATABASE veterinaria_patitas_felices;
USE veterinaria_patitas_felices;

-------------------------------------------------
--Ejercicio 2 – Crear tabla duenos
CREATE TABLE duenos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(100)
);

-------------------------------------------------
--Ejercicio 3 – Crear tabla mascotas
--Crear la tabla mascotas 
CREATE TABLE mascotas (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    raza VARCHAR(50),
    fecha_nacimiento DATE,
    id_dueno INT NOT NULL,
    
CONSTRAINT fk_mascotas_duenos FOREIGN KEY (id_dueno) 
        REFERENCES duenos(id) 
        ON DELETE CASCADE 
);


-------------------------------------------------
--Ejercicio 4 – Crear tabla veterinarios
--Crear la tabla veterinarios

CREATE TABLE veterinarios (
    id INT  PRIMARY KEY AUTO_INCREMENT ,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    especialidad VARCHAR(50) NOT NULL
);


----------------------------------------------------
--Ejercicio 5 – Crear tabla historial_clinico
--Crear la tabla historial_clinico 
CREATE TABLE historial_clinico(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_mascota INT,
    id_veterinario INT,
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    descripcion VARCHAR(250) NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id) ON DELETE CASCADE,
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id)
);

------------------------------------------------------
--Ejercicio 6 – Insertar registros
--Insertar: 3 dueños con información completa , 3 mascotas, cada una asociada a un dueño, 2 veterinarios con especialidades distintas, 3 registros de historial clínico
--dueños
INSERT INTO duenos (nombre, apellido, telefono, direccion) VALUES
('Pepe', 'Argento', '11-zapatero', 'Racing Club 123, Tigre'),
('Lionel', 'Messi', '10-1010-1010', 'Rosario Siempre Estuvo Cerca 10'),
('Ricardo', 'Fort', '11-MAIAMEEE', 'Fabrica de Chocolates 555');

-- Mascotas
INSERT INTO mascotas (nombre, especie, raza, fecha_nacimiento, id_dueno) VALUES
('Fatiga', 'Perro', 'Ovejero Aleman', '2005-04-12', 1), 
('Hulk', 'Perro', 'Dogo de Burdeos', '2016-01-01', 2), 
('Cutucuchillo', 'Gato', 'Persa Electrico', '2012-11-25', 3); 

-- Veterinarios
INSERT INTO veterinarios (nombre, apellido, matricula, especialidad) VALUES
('Carlos', 'Bilardo', 'MV-GATORADE', 'Traumatologia Tactica'),
('Julio', 'Tangalanga', 'MV-TARUF ETI', 'Fonoaudiologia Animal');

-- Historial 
INSERT INTO historial_clinico (id_mascota, id_veterinario, descripcion) VALUES
(1, 1, 'El paciente se niega a levantarse del sillón. Signos vitales estables pero vagos.'),
(2, 1, 'Control de peso. Exceso de masa muscular por jugar a la pelota.'),
(3, 2, 'Consulta telefónica. El gato maúlla raro cuando le sacan la electricidad.');

-------------------------------------------------
--Ejercicio 7 – Actualizar registros
--
--Realizar las siguientes actualizaciones:
--1. Cambiar la dirección de un dueño (por ID o nombre).
--2. Actualizar la especialidad de un veterinario (por ID o matrícula).
--3. Editar la descripción de un historial clínico (por ID).

--1
UPDATE duenos 
SET direccion = 'Zapateria el Pepe, Local 4' 
WHERE id = 1;

-- 2
UPDATE veterinarios 
SET especialidad = 'Medicina Deportiva Bilardista' 
WHERE id = 1;

-- 3
UPDATE historial_clinico 
SET descripcion = 'El paciente sigue durmiendo. Se receta descanso absoluto.' 
WHERE id = 1;

