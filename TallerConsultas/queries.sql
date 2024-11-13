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

-- 11
select * from departamento;
select nombre, abs(presupuesto - gastos) as PresupuestoActual from departamento ;

-- 12
select nombre, abs(presupuesto - gastos) as PresupuestoActual from departamento order by abs(presupuesto - gastos) asc;

-- 13
select nombre from departamento order by nombre asc;

-- 14
select nombre from departamento order by nombre desc;

-- 15
select apellido1,apellido2, nombre from empleado order by 1,2,3 asc;

-- 16
select nombre, presupuesto from departamento order by presupuesto desc limit 3;

-- 17
select nombre, presupuesto from departamento order by presupuesto asc limit 3;

-- 18
select nombre,gastos from departamento  order by gastos desc limit 2;

-- 19
select nombre,gastos from departamento  order by gastos asc limit 2;

-- 20
select * from empleado limit 5 offset 2;

-- 21
select nombre , presupuesto from departamento where presupuesto>=150000;

-- 22
select nombre, gastos from departamento where gastos<=5000;

-- 23
select nombre, presupuesto from departamento where presupuesto between 100000 and 200000;
select * from departamento;

-- 24
select nombre, presupuesto from departamento where not presupuesto >= 100000 and presupuesto<=20000;

-- 25
select nombre, presupuesto from departamento where presupuesto between 100000 and 200000;

-- 26
select nombre, presupuesto from departamento where not presupuesto between 100000 and 200000;

-- 27
select nombre,gastos, presupuesto from departamento where gastos>presupuesto;

-- 28
select nombre,gastos, presupuesto from departamento where gastos<presupuesto;

-- 29
select nombre, gastos,presupuesto from departamento where gastos=presupuesto;

-- 30
select * from empleado where apellido2 is null;

-- 31
select * from empleado where not apellido2 is null;

-- 32
select * from empleado where apellido2='lópez';

-- 33
select * from empleado where  apellido2= 'díaz' or 'moreno';

-- 34
select * from empleado where apellido2 in ('díaz','moreno');

-- 35
select nombre,apellido1,apellido2,nif from empleado where id_departamento=3;

-- 36
select nombre,apellido1,apellido2,nif from empleado  where id_departamento in (2,4,5);

-- CONSULTA MULTITABLA
-- 1
select empleado.nombre, empleado.apellido1,empleado.apellido2,
departamento.id as idDepartamento,departamento.nombre as nombreDepartamento,departamento.presupuesto,departamento.gastos 
from empleado inner join departamento on empleado.id_departamento=departamento.id ;

-- 2
select empleado.nombre, empleado.apellido1,empleado.apellido2,
departamento.id as idDepartamento,departamento.nombre as nombreDepartamento,departamento.presupuesto,departamento.gastos 
from empleado inner join departamento on empleado.id_departamento=departamento.id order by 4,2,3,1;

-- 3 
select distinct departamento.id, departamento.nombre from departamento inner join empleado on departamento.id=empleado.id_departamento;

-- 4
select distinct departamento.id, departamento.nombre, 
abs(presupuesto-gastos) as presupuestoActual from departamento
inner join empleado on departamento.id=empleado.id_departamento;

-- 5
select departamento.nombre from departamento 
inner join empleado on departamento.id=empleado.id_departamento 
where nif='38382980M';

-- 6 
select departamento.nombre from departamento 
inner join empleado on departamento.id=empleado.id_departamento 
where empleado.nombre='pepe' and empleado.apellido1='ruiz' and empleado.apellido2='santana';

-- 7
select empleado.nombre,empleado.apellido1,empleado.apellido2 from empleado 
inner join departamento on empleado.id_departamento= departamento.id 
where departamento.nombre= 'i+d' order by empleado.nombre asc;

-- 8
select empleado.nombre,empleado.apellido1,empleado.apellido2 from empleado 
inner join departamento on empleado.id_departamento= departamento.id 
where departamento.nombre in('sistemas','contabilidad','i+d') order by empleado.nombre,empleado.apellido1,empleado.apellido2 asc ;

-- 9
select empleado.nombre from empleado 
inner join departamento on empleado.id_departamento= departamento.id 
where not presupuesto between 100000 and 200000;

-- 10
select departamento.nombre from departamento 
inner join empleado on departamento.id=empleado.id_departamento
where empleado.apellido2 is null;

-- CONSULTAS MULTITABLA (COMPOSICIÓN EXTERNA)
-- 1
select * from empleado left join departamento on empleado.id_departamento = departamento.id;

-- 2
select * from empleado left join departamento on empleado.id_departamento = departamento.id where departamento.id is null;

-- 3
select departamento.nombre from departamento 
left join empleado on departamento.id = empleado.id_departamento 
where empleado.id_departamento is null;

-- 4
select empleado.nombre,empleado.apellido1,departamento.nombre,departamento.presupuesto,departamento.gastos from empleado 
left join departamento on empleado.id_departamento = departamento.id
union 
select empleado.nombre,empleado.apellido1,departamento.nombre,departamento.presupuesto,departamento.gastos from empleado 
right join departamento on empleado.id_departamento = departamento.id; -- falta organizar el departamento por el nombre

-- 5
select empleado.nombre,empleado.apellido1,departamento.nombre,departamento.presupuesto,departamento.gastos from empleado 
left join departamento on empleado.id_departamento = departamento.id where empleado.id_departamento is null
union 
select empleado.nombre,empleado.apellido1,departamento.nombre,departamento.presupuesto,departamento.gastos from empleado 
right join departamento on empleado.id_departamento = departamento.id where empleado.id_departamento is null; -- falta organizar el departamento por el nombre

-- CONSULTAS RESUMEN
-- 1
select sum(presupuesto) as SumaPresupuesto from departamento;

-- 2
select avg(presupuesto) as mediaPresupuesto from departamento;

-- 3
select min(presupuesto) as valorMinimoPresupuesto from departamento;

-- 4
select departamento.nombre,departamento.presupuesto from departamento order by presupuesto asc limit 1;

-- 5
select max(presupuesto) from departamento;

-- 6
select departamento.nombre,departamento.presupuesto from departamento order by presupuesto desc limit 1;

-- 7
select count(id) as cantidadEmpleados from empleado;

-- 8
select count(id) as cantidadEmpleados from empleado where not apellido2 is null;

-- 9
select departamento.nombre, count(empleado.id) as num_empleados
from departamento 
left join empleado on departamento.id=empleado.id_departamento
group by departamento.nombre;

-- 10
select departamento.nombre, count(empleado.id) as num_empleados
from departamento 
left join empleado on departamento.id=empleado.id_departamento
group by departamento.nombre
having count(empleado.id)>2
;

-- 11
select departamento.nombre, count(empleado.id) as num_empleados
from departamento 
left join empleado on departamento.id=empleado.id_departamento
group by departamento.nombre;

-- 12
select departamento.nombre, count(empleado.id) as num_empleados
from departamento 
left join empleado on departamento.id=empleado.id_departamento
where presupuesto>200000
group by departamento.nombre;



