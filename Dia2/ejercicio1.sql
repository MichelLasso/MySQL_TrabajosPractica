create database país;
use país;

create table tablaPais(
	idPais int primary key,
    nombre varchar(20) not null,
    continente varchar(50) not null,
    población int not null
); -- tabla país
create table ciudad(
	idCiudad int primary key,
    nombre varchar(50) not null,
    idPais int not null,
    foreign key (idPais) references tablaPais(idPais)
); -- tabla ciudad
describe tablaPais;
describe ciudad;

create table idioma(
	id int primary key not null,
    idioma varchar(50)
);

create table idioma_pais(
	id_Idioma int not null,
    id_Pais int not null,
    es_oficial tinyint,
    primary key (id_Idioma, id_Pais),
    foreign key (id_Idioma) references idioma(id),
    foreign key (id_Pais) references tablaPais(idPais)
);
describe idioma; 
insert into idioma (id, idioma) values (1, "español"),(2, "ingles"),(3,"frances"); -- insertar datos
select * from idioma; -- mostrar los datos ingresados

insert into tablaPais (idPais,nombre,continente,población)
values (1, 'México', 'América', 126000000),
(2, 'Estados Unidos', 'América', 331000000),
(3, 'Francia', 'Europa', 67000000),
(4, 'Canadá', 'América', 38000000);

select * from tablaPais;

insert into ciudad(idCiudad,nombre,idPais) values (1, "New York", 2),(2, "París",3), (3, "Ottawa",1);
select * from ciudad;

insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (1,1,1); -- 1 si es oficial
insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (2,1,0); -- 0 no es oficial
insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (3,3,1);
insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (3,4,1);
insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (2,2,1);
insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (1,2,0);
insert into idioma_pais(id_Idioma, id_Pais, es_oficial) values (2,4,0);

select * from idioma_pais

-- consultas

-- 1. listar todos los idiomas
select * from idioma;
select idioma from idioma;

-- 2. Listar el idioma con ID
select * from idioma where id=1;
select idioma from idioma where id=1;

-- 3. consultar los países que estén en América
select nombre from tablapais where continente = "América";
select * from tablapais where continente = "América";
select nombre as nombrePais from tablapais where continente = "América";

-- SUBCONSULTAS
-- 4. subconsultas que encuentre los idiomas oficiales
select idioma from idioma where id in (select id_idioma from idioma_pais where es_oficial =1);