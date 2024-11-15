use autoRenta;


-- cuantos clientes hay registrados en la empresa
select count(idCliente) as Número_clientes from cliente;

-- cuantos empleados hay registrados en la empresa
select count(idEmpleado)as Número_empleados from empleado;

-- cuantos empleados hay en cada sucursal
select sucursal.ciudad,count(empleado.idEmpleado) as Numero_empleados from sucursal
inner join empleado on sucursal.idSucursal= empleado.idSucursal group by(empleado.idSucursal);

-- listar el número de mantinimientos realizados a cada vehiculo
-- mostrar la placa y el número de mantenimientos
select 	vehiculo.placa ,count(vehiculo.idVehiculo)as Número_mantenimientos from mantenimiento 
inner join vehiculo on  mantenimiento.idVehiculo=vehiculo.idVehiculo group by(vehiculo.idVehiculo);

-- listar los apellidos de los empleados y la ciudad de la sucursal donde trabajan,
-- ordena los datos alfabeticamente por la ciudad
select apellido1,apellido2,sucursal.ciudad from empleado 
inner join sucursal on empleado.idSucursal= sucursal.idSucursal order by 3 asc;

-- listar el pais y la ciudad donde se emplea el servicio de la empresa 
select pais,ciudad from sucursal;

-- listar el telefono, celular,correo electronico y ciudad de las 
-- sucursales de la empresa autorenta
select telefono,celular,correo_electronico,ciudad from sucursal;

-- listar los vehiculos que fueron entregados a tiempo 
-- con el nombre del cliente y cedula
select cliente.nombre1,cliente.cedula, alquiler.fecha_esperada, alquiler.fecha_llegada from alquiler 
inner join cliente on cliente.idCliente=alquiler.idCliente where fecha_esperada>=fecha_llegada;

-- listar el precio de alquiler por dia con el tipo de vehiculo y placa
select tipo,placa,valor_dia from alquiler 
inner join vehiculo on alquiler.idVehiculo= vehiculo.idVehiculo;

-- calcular el total que han hecho todos los vehiculos 
select sum(valor_pagado) as Total from alquiler;

-- calcular el total que ha generado cada vehiculo
-- muestra el tipo de vehiculo, placa y el total
select tipo,placa, sum(valor_pagado)as total from vehiculo
inner join alquiler on vehiculo.idVehiculo=alquiler.idVehiculo
group by(alquiler.idVehiculo);

-- Listar los vehiculos que fueron entregados el día de hoy
-- muestra el tipo,placa y la feche de llegada
select tipo,placa,fecha_llegada from vehiculo 
inner join alquiler on vehiculo.idVehiculo=alquiler.idVehiculo
where fecha_llegada= current_date();

-- Listar los vehiculos que fueron alquilados el día de hoy
-- muestra el tipo,placa y la fecha de llegada
select tipo,placa,fecha_salida from vehiculo 
inner join alquiler on vehiculo.idVehiculo=alquiler.idVehiculo
where fecha_salida= current_date();

-- listar el mantenimiento de los vehículos con su descripción, placa del vehiculo y lugar de mantenimieno
select placa,descripcion,nombre as NombreLugar from vehiculo 
inner join mantenimiento on vehiculo.idVehiculo=mantenimiento.idVehiculo
inner join lugar_mantenimiento l on mantenimiento.idLugar_mantenimiento= l.idLugar_mantenimiento

