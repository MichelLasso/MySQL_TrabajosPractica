use autorenta;
-- Procedimiento autoRenta
-- 1. consultar los clientes que no han entregado el vehículo
delimiter //
create procedure clientesConVehiculo()
begin
	select idAlquiler,nombre1,nombre2,apellido1,apellido2 from cliente
	inner join alquiler on cliente.idCliente=alquiler.idCliente
	where fecha_llegada is null;
end // delimiter ;

call clientesConVehiculo();

-- 2. buscar el segundo nombre que tenga null en la tabla clientes
-- mostrar todos los datos
delimiter //
create procedure searchName2Null()
begin
	select * from cliente where nombre2 is null;
end // delimiter ;

call searchName2Null();

-- 3. agregarle el segundo nombre a los clientes que tengan null
-- ingresar el segundo nombre por id
delimiter //
create procedure agregarNombre2Null(in id int, in newName2 varchar(30))
begin 
	if exists(select * from cliente where id=idCliente and nombre2 is null)
    then update cliente
	set nombre2= newName2 where idCliente=id and nombre2 is null;
    else
		select 'cliente no encontrado por id o por null' as mensaje;
    end if; 
end // delimiter ;

call agregarNombre2Null(3,'Miguel')

-- 4. registrar la fecha de llegada de los vehiculos
-- registrar por id
delimiter //
create procedure fechaLLegadaRegistro(in id int, in fechaRegistro varchar(30))
begin
	if exists(select * from alquiler where id=idAlquiler and fecha_llegada is null)
    then update alquiler
    set fecha_llegada= fechaRegistro where id=idAlquiler and fecha_llegada is null;
    else 
		select 'verifique el id o si el dato es null';
	end if;
end // delimiter ;

call fechaLLegadaRegistro(3,'2024-12-10');

-- 5 calcular los días que hay entre la fecha esperada y la fecha de llegada
delimiter //
create procedure diasFecha(in id int)
begin
	if exists(select * from alquiler 
    where id=idAlquiler and fecha_llegada is not null) 
    then 
    select datediff(fecha_esperada,fecha_llegada) as dias from alquiler
    where id=idAlquiler;
    else
    select 'verifique el id o el registro de fecha' as mensaje;
	end if;
end // delimiter ;

call diasFecha(1);

-- 6. mostrar una lista con la cantidad de dias 
-- de todos los alquileres con retraso
-- mostrar los nombres y apellidos del cliente
delimiter //
create procedure diasFechaTodo()
begin
    select cliente.idCliente,nombre1,nombre2,apellido1,apellido2,
    datediff(fecha_esperada,fecha_llegada) as dias from alquiler 
    inner join cliente on alquiler.idCliente=cliente.idCliente 
    order by idCliente asc;
end // delimiter ;

call diasFechaTodo();

-- 7 cambiar la dirreción del lugar de mantenimiento 
-- por el id ingresado
delimiter //
create procedure direccionNueva(in id int, in direccionNew varchar(40))
begin
	if exists(select * from lugar_mantenimiento l where id=idLugar_mantenimiento)
    then update lugar_mantenimiento
    set direccion= direccionNew where id=idLugar_mantenimiento;
    else 
    select 'verifique el id ingresado' as mensaje;
    end if;
end // delimiter ;

call direccionNueva(1,'Calle 5-#23-3');

-- 8. si hubo un error de registro en el mantenimiento de un vehículo
-- crea un procedimiento para cambiar el id del vehiculo
-- cambia el dato segun el id del mantenimiento ingresado
delimiter //
create procedure cambiarIdVehiculo(in id_mantenimiento int, in id_vehiculo int)
begin 
	if exists(select * from mantenimiento inner join vehiculo 
    where id_mantenimiento=mantenimiento.idMantenimeinto 
    and id_vehiculo=vehiculo.idVehiculo)
    then update mantenimiento
    set idVehiculo= id_vehiculo where id_mantenimiento=idMantenimeinto;
    else
    select 'verifique la existencia de los id' as mensaje;
    end if;
end // delimiter ;

call cambiarIdVehiculo(1,2);

-- 9. Hubo un error al ingresar un dato en la tabla vehiculo
-- crea un procedimiento para cambiar el id de la sucursal
-- cambia el dato según el id ingresado por el usuario
delimiter //
create procedure cambiarIdSucursal(in id_sucursal int, in id_vehiculo int)
begin 
	if exists(select * from vehiculo inner join sucursal 
    where id_sucursal=sucursal.idSucursal and id_vehiculo=vehiculo.idVehiculo)
    then update vehiculo
    set idSucursal= id_sucursal where id_vehiculo=idVehiculo;
    else
    select 'verifique la existencia de los id' as mensaje;
    end if;
end // delimiter ;

call cambiarIdSucursal(1,2);

-- 10. Un empleado cambió de celular
-- registra el nuevo dato del empleado 
-- según el id ingresado
delimiter //
create procedure cambiarCelularEmpleado(in id_empleado int,
in celularNew varchar(30))
begin 
	if exists(select * from empleado where id_empleado=idEmpleado)
    then update empleado
    set celular= celularNew where id_empleado=idEmpleado;
    else
    select 'verifique la existencia del id' as mensaje;
    end if;
end // delimiter ;

call cambiarCelularEmpleado(1,"322-987-9872");