# tp-mysql--Jenifer-Cruz-

# 🐾 Trabajo Práctico: Veterinaria "Patitas Felices"


Este repositorio contiene la solución completa al Trabajo Práctico final, cuyo objetivo es el **diseño, creación y manipulación** de un sistema de gestión de datos para una veterinaria.



---

## 📋 Cumplimiento de Objetivos

El proyecto resuelve los 10 ejercicios planteados en la consigna, demostrando dominio en:

* ✅ **Diseño del Esquema (DDL):** Creación de tablas (`duenos`, `mascotas`, `veterinarios`, `historial_clinico`) respetando tipos de datos y restricciones (`NOT NULL`, `UNIQUE`).
* ✅ **Integridad Referencial:** Definición correcta de Claves Primarias (PK) y Foráneas (FK).
* ✅ **Automatización:** Implementación de la cláusula **`ON DELETE CASCADE`** para la gestión de eliminaciones dependientes (Ejercicio 8).
* ✅ **Manipulación de Datos (CRUD):** Inserción, lectura, actualización y eliminación de registros.
* ✅ **Consultas Complejas:**
    * **JOIN Simple:** Relación mascota-dueño (Ejercicio 9).
    * **JOIN Múltiple:** Reporte integral uniendo las 4 tablas ordenadas cronológicamente (Ejercicio 10).

---

## 📂 Estructura del Repositorio

Siguiendo las buenas prácticas solicitadas:


tp-mysql-[jenifer-cruz]/

├── script_veterinaria.sql   # Script único con los 10 ejercicios resueltos y comentados

├── README.md                # Documentación del proyecto

## 🛠 Ejecución del Proyecto
El script script_veterinaria.sql es idempotente (se puede reiniciar) y está organizado secuencialmente:

Creación: Reinicia la BDD veterinaria_patitas_felices.

Tablas: Genera la estructura relacional.

Carga (Seed): Inserta datos de prueba (basados en Casados con Hijos, Messi y Fort).

Operaciones: Ejecuta las actualizaciones y validaciones requeridas.

Reportes: Genera las consultas finales.



## 📝 Criterios de Evaluación
Este trabajo se enfocó en cumplir los puntos de valoración 

[x] Código SQL limpio y comentado.

[x] Nomenclatura clara y consistente (snake_case).

[x] Uso correcto de índices en claves foráneas.

[x] Verificación de la integridad de datos.

## 👤 Alumno
[Jenifer cruz]

🔗 [ https://github.com/jeni969696/  ]