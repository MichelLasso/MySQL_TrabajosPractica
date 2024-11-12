-- 1. Lista el primer apellido de todos los empleados.
select empleado.apellido1 from empleado;

-- 2. Lista el primer apellido de los empleados eliminando los apellidos que estén repetidos.
select distinct empleado.apellido1 from empleado;

-- 3. Lista todas las columnas de la tabla empleado.
select * from empleado;

-- 4. Lista el nombre y los apellidos de todos los empleados.
select nombre, apellido1, apellido2 from empleado;

-- 5. Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleado.
select empleado.id_departamento from empleado;

-- 6. Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleado,
-- eliminando los identificadores que aparecen repetidos.
select distinct empleado.id_departamento from empleado;

-- 7. Lista el nombre y apellidos de los empleados en una única columna.
select concat_ws(' ', nombre, ' ' , apellido1, ' ', apellido2) from empleado;

-- 8. Lista el nombre y apellidos de los empleados en una única columna,
-- convirtiendo todos los caracteres en mayúscula.
select upper(concat_ws(' ', nombre, ' ' , apellido1, ' ', apellido2)) from empleado;

-- 9.Lista el nombre y apellidos de los empleados en una única columna,
-- convirtiendo todos los caracteres en minúscula.
select lcase(concat_ws(' ', nombre, ' ' , apellido1, ' ', apellido2)) from empleado;

-- 10. Lista el identificador de los empleados junto al nif, pero el nif deberá
-- aparecer en dos columnas, una mostrará únicamente los dígitos del nif y la otra la letra.
select REGEXP(nif, '[0-9]')as Número, substring(nif, '[A-Z]')as letra from empleado;
