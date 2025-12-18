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
