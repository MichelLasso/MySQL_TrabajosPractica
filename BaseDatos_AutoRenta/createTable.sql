create database autoRenta;
use autoRenta;

create table sucursal(
	idSucursal int primary key,
    pais varchar(50) not null,
    ciudad varchar(50) not null,
    direccion varchar(40) not null,
    telefono varchar(30) not null,
    celular varchar(30) not null,
    correo_electronico varchar(50) not null
);
-- 2
create table cliente(
	idCliente int primary key,
    nombre1 varchar(30) not null,
    nombre2 varchar(30),
    apellido1 varchar(30) not null,
    apellido2 varchar(30),
    cedula int,
    ciudad varchar(50) not null,
    direccion varchar(40) not null,
    celular varchar (30) not null,
    correo_electronico varchar(50) not null
);
-- 3
create table lugar_mantenimiento(
	idLugar_mantenimiento int primary key,
    nombre varchar(30) not null,
    nombre1_dueño varchar(30) not null,
    nombre2_dueño varchar(30),
    apellido1_dueño varchar(30) not null,
    apellido2_dueño varchar(30),
    telefono varchar(30) not null,
    correo_electronico varchar(50),
    pais varchar(50) not null,
    ciudad varchar(50) not null,
    direccion varchar(40) not null
);
-- 4
create table vehiculo(
	idVehiculo int primary key,
    tipo varchar(30) not null,
    placa varchar(10) not null,
    referencia varchar(30) not null,
    modelo varchar (30) not null,
    puertas int not null,
    capacidad int not null,
    sunroof varchar (60) not null,
    motor varchar (30) not null,
    color varchar (20) not null,
	idSucursal int not null,
    foreign key (idSucursal) references sucursal(idSucursal)
);
-- 5
create table empleado(
	idEmpleado int primary key,
    nombre1 varchar(30) not null,
    nombre2 varchar(30),
    apellido1 varchar(30) not null,
    apellido2 varchar(30),
    ciudad varchar(50) not null,
    celular varchar(30) not null,
    correo_electronico varchar(50),
    idSucursal int not null,
    foreign key (idSucursal) references sucursal(idSucursal)
);
-- 6
create table sucursal_cliente(
	idSucursal_cliente int primary key,
	idSucursal int not null,
    foreign key (idSucursal) references sucursal(idSucursal),
    idCliente int not null,
    foreign key(idCliente) references cliente(idCliente)
);
-- 7
create table alquiler(
	idAlquiler int primary key,
    sucursal_alquiler int not null,
    foreign key (sucursal_alquiler) references sucursal(idSucursal),
    sucursal_entrega int not null,
    foreign key (sucursal_entrega) references sucursal(idSucursal),
    idEmpleado int not null,
    foreign key (idEmpleado) references empleado(idEmpleado),
    idCliente int not null,
    foreign key (idCliente) references cliente(idCliente),
    idVehiculo int not null,
    foreign key(idVehiculo) references vehiculo(idVehiculo),
    fecha_salida varchar(30) not null,
    fecha_llegada varchar(30),
    fecha_esperada varchar(30) not null,
    porcentaje_descuento int,
    valor_cotizado int not null,
    valor_pagado int not null,
    valor_semanal int not null,
    valor_dia int not null
);
-- 8
create table mantenimiento(
	idMantenimeinto int primary key,
    idVehiculo int not null,
    foreign key(idVehiculo) references vehiculo(idVehiculo),
    descripcion varchar (100) not null,
    fecha_llegada varchar(30) not null,
    fecha_salida varchar (30) not null,
    idLugar_mantenimiento int not null,
    foreign key(idLugar_mantenimiento) references lugar_mantenimiento(idLugar_mantenimiento)
);
