
-- TRABAJO
-- Devuelve el número total de alumnas que hay.
select count(*) as NumAlumnas from alumno where sexo=2;

-- Calcula cuántos alumnos nacieron en 1999.
select count(*)as Num_Alumnos_1999 from alumno where year(fecha_nacimiento)=1999; 

-- Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas,
-- una con el nombre del departamento y otra con el número de profesores que hay en ese departamento.
-- El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
select * from profesor inner join departamento on profesor.id_departamento = departamento.id;
select departamento.nombre as ApartamentoNombre,count(*) as NumProfeDepa from profesor 
inner join departamento on profesor.id_departamento= departamento.id  group by id_departamento order by count(*) desc;

-- Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos.
-- Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
select departamento.nombre as ApartamentoNombre,count(id_departamento) as NumProfeDepa from profesor right join departamento on profesor.id_departamento= departamento.id  group by departamento.nombre;

-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno.
-- Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado.
-- El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.

select nombre from grado ;
select grado.nombre, count(id_grado) as cant from asignatura 
right join grado on asignatura.id_grado=grado.id  group by grado.nombre order by count(id_grado) desc;
select * from asignatura;

-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno,
-- de los grados que tengan más de 40 asignaturas asociadas
select grado.nombre, count(*) as cant  from asignatura inner join grado on asignatura.id_grado=grado.id group by id_grado having count(*)>40;

-- Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura.
-- El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo.
-- Ordene el resultado de mayor a menor por el número total de crédidos.
select grado.nombre as NombreGrado,asignatura.tipo as TipoAsignatura ,sum(asignatura.creditos) as creditos from grado 
inner join asignatura on grado.id=asignatura.id_grado group by grado.nombre,asignatura.tipo order by creditos desc;

-- Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares.
-- El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
select count(id_alumno) as CantAlumno, curso_escolar.anyo_inicio from alumno_se_matricula_asignatura inner join curso_escolar on alumno_se_matricula_asignatura.id_curso_escolar= curso_escolar.id  group by id_asignatura,id_curso_escolar;

-- Devuelve un listado con el número de asignaturas que imparte cada profesor.
-- El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. 
-- El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas.
-- El resultado estará ordenado de mayor a menor por el número de asignaturas.

select profesor.id,profesor.nombre,profesor.apellido1,profesor.apellido2, count(asignatura.id_profesor) from profesor 
left join asignatura on profesor.id=asignatura.id_profesor 
group by profesor.id,profesor.nombre,profesor.apellido1,profesor.apellido2, asignatura.id_profesor 
order by count(asignatura.id_profesor) desc;
select * from asignatura;

-- consultas en clase
select apellido1,apellido2,nombre from alumno order by 1,2 asc;
-- 1=apellido1, 2=apellido2, 3= nombre asc=organiza de la letra z hasta la a. desc=organiza de la letra a,z

-- estudiantes que han dado de alta su número de teléfono
select * from alumno;
select * from asignatura;
select  nombre,apellido1,apellido2,telefono from alumno where telefono is null;

-- listado de las asignaturas que se imparten en el primer cuatrimestres en el curso 3 con el identificador del grado 7
select id,nombre,id_grado,cuatrimestre from asignatura where cuatrimestre =1 and id_grado=7 and curso=3;

select * from asignatura inner join grado on asignatura.id_grado=grado.id where grado.nombre= "Grado en Ingeniería Informática (Plan 2015)";
select * from asignatura, grado where grado.id= 4;
select * from asignatura;
select * from alumno_se_matricula_asignatura;
select * from curso_escolar;
select * from alumno_se_matricula_asignatura,curso_escolar where anyo_inicio>=2017 and anyo_fin<=2018 ;

-- devuleve un listado con todos los alumnos que se matricularon en curso en los años 2017 y 2018
select distinct id_alumno,apellido1,alumno.nombre as AlumnoName,asignatura.nombre as asignaturaName,anyo_inicio,anyo_fin from alumno 
inner join alumno_se_matricula_asignatura matri on alumno.id= matri.id_alumno 
inner join asignatura on matri.id_asignatura=asignatura.id 
inner join curso_escolar on matri.id_curso_escolar= curso_escolar.id where anyo_inicio>=2017 and anyo_fin<=2018;
