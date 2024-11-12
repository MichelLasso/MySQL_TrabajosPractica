use universidad_t2;
-- Devuelve todos los datos del alumno más joven.
select nombre , 2024-year(fecha_nacimiento) from alumno order by 2024-year(fecha_nacimiento) asc limit 1;

-- Devuelve un listado con los profesores que no están asociados a un departamento.
select id_departamento from profesor where id_departamento is null;

-- Devuelve un listado con los departamentos que no tienen profesores asociados.
select departamento.id,departamento.nombre from departamento left join profesor on departamento.id=profesor.id_departamento where profesor.id_departamento is null;

-- Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
select profesor.id,profesor.nombre from profesor left join departamento on profesor.id_departamento=departamento.id left join asignatura on profesor.id=asignatura.id_profesor where asignatura.id_profesor is null ;

-- Devuelve un listado con las asignaturas que no tienen un profesor asignado
select distinct asignatura.nombre,id_profesor from asignatura left join profesor on asignatura.id_profesor= profesor.id where asignatura.id_profesor is null;

-- Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
select departamento.nombre from departamento 
inner join alumno_se_matricula_asignatura 
inner join curso_escolar on alumno_se_matricula_asignatura.id_curso_escolar=curso_escolar.id 
left join profesor on departamento.id= profesor.id_departamento where profesor.id_departamento is null;

-- Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
select profesor.id,departamento.nombre from departamento 
inner join profesor on departamento.id=profesor.id_departamento 
inner join asignatura on profesor.id=asignatura.id_profesor 
inner join grado on asignatura.id_grado=grado.id ;

select * from profesor;
select * from asignatura;
select * from grado;
select * from departamento;

-- Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados.
-- El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado
-- El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor.
-- El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre
select  departamento.nombre,profesor.apellido1,profesor.apellido2,profesor.nombre from profesor left join departamento on profesor.id_departamento=departamento.id order by 1,2,3,4 asc;

-- Devuelve un listado con los profesores que no están asociados a un departamento.
select profesor.id_departamento from profesor where id_departamento is null;

-- Devuelve un listado con los profesores que no imparten ninguna asignatura.
select distinct profesor.nombre,asignatura.id_profesor from asignatura inner join profesor where id_profesor is null;
-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.

-- Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar.
-- El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.

select distinct departamento.nombre , asignatura.nombre from departamento 
inner join profesor on departamento.id=profesor.id_departamento inner join asignatura on asignatura.id_profesor=profesor.id 
inner join alumno_se_matricula_asignatura 
inner join curso_escolar on alumno_se_matricula_asignatura.id_curso_escolar=curso_escolar.id;

