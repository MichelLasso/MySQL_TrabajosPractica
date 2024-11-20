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
inner join lugar_mantenimiento l on mantenimiento.idLugar_mantenimiento= l.idLugar_mantenimiento;

-- 15 obtener el porcentaje de descuento promedio aplicado en los alquileres de cada sucursal
select sucursal.idSucursal, avg(alquiler.porcentaje_descuento) as PromedioDescuento from alquiler 
inner join sucursal on alquiler.sucursal_entrega = sucursal.idSucursal group by 1;

-- 16 obtener el número total de vehículos alquilados por tipo
-- mostrar el tipo, placa y número total
select tipo,placa, count(alquiler.idVehiculo)as totalALquileres from alquiler 
inner join vehiculo on alquiler.idVehiculo= vehiculo.idVehiculo 
group by 1,2;

-- 17 calcular ingreso total del alquiler en un rango de fecha
select sum(valor_pagado) as ingresoTotal from alquiler where fecha_salida between '2024-11-10'  and '2024-12-20';

-- 18 calcular la diferencia entre el valor pagado y el valor cotizado
-- mostrar el valor cotizado y pagado
select alquiler.valor_cotizado,alquiler.valor_pagado, (valor_cotizado-valor_pagado) as diferencia from alquiler;

-- 19 listar los vehículos que no se han entregado
-- mostrar el tipo de vehículo, placa y la fecha en que fue solicitado el vehiculo y
-- la fecha esperada de fecha
select tipo,placa,fecha_salida,fecha_esperada from alquiler 
inner join vehiculo on alquiler.idVehiculo= vehiculo.idVehiculo where fecha_llegada is null;

-- 20 listar el numero de alquileres por cada sucursal de manera descendente
-- mostrar la ciudad y el total de laquileres
select sucursal.ciudad , count(alquiler.idAlquiler) as numeroAlquileres from alquiler 
inner join sucursal on alquiler.sucursal_alquiler=sucursal.idSucursal group by 1 order by count(alquiler.idAlquiler) desc;

-- 21 listar la sucursal con el mayor número de alquileres
-- mostrar la ciudad y el total de laquileres
select sucursal.ciudad , count(alquiler.idAlquiler) as numeroAlquileres from alquiler 
inner join sucursal on alquiler.sucursal_alquiler=sucursal.idSucursal group by 1 order by count(alquiler.idAlquiler) desc limit 1;

-- 22 calcular el valor total de alquileres por cliente
select cliente.idCliente,sum(valor_pagado)as total from alquiler,cliente where alquiler.idCliente=cliente.idCliente group by Alquiler.idCliente;

-- 23 calcular el valor total de alquileres por cliente
-- mostrar los que no han alquilado vehiculos y los que si
select cliente.idCliente,sum(valor_pagado)as total from alquiler right join cliente on alquiler.idCliente=cliente.idCliente where alquiler.idCliente is null group by cliente.idCliente
union
select cliente.idCliente,sum(valor_pagado)as total from alquiler left join cliente on alquiler.idCliente=cliente.idCliente where alquiler.idCliente group by cliente.idCliente order by idCliente asc;
;
-- 24 mostrar la diferencia de dias entre la fecha esperada y la de llegada del vehiculo
select datediff(fecha_esperada,fecha_llegada) from alquiler where fecha_llegada>fecha_esperada;
-- funciones

-- 25 sumale a una fecha 6 dias
select fecha_salida,date_add(fecha_salida,interval 6 day)as suma6 from alquiler;

