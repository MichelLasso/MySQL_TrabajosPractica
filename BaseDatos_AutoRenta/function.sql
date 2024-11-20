use autoRenta;
-- 1 calcula el valor total de los alquileres por cada cliente
DELIMITER //
create function calcularTotal(idCliente INT)
returns int deterministic
begin
    declare total INT;
    SET total = (select SUM(valor_pagado) from alquiler where alquiler.idCliente = idCliente);
    return total;
end // DELIMITER ;

select cliente.idCliente, calcularTotal(cliente.idCliente) AS TotalAlquileres
from  cliente;

-- función 2
-- muestra el nombre completo de los empleados en una columna
delimiter //
create function nombreCompleto(nombre1 varchar(30),
nombre2 varchar(30),apellido1 varchar(30),apellido2 varchar(30))
returns varchar(100) deterministic 
begin
	declare resultado varchar(100);
    set resultado = concat_ws(' ', nombre1,nombre2, apellido1, apellido2);
    return resultado;
end
// delimiter ;

select nombreCompleto(nombre1 ,nombre2 ,apellido1,apellido2 )as nombreCompleto from empleado;

-- funcion3 
-- mostrar el correo electronico del empleado al ingresar el id
delimiter //
create function idParametro(idIngresado int)
returns varchar(30) deterministic
begin
	declare correo varchar(50);
    set correo= (select distinct correo_electronico from empleado 
    where idIngresado=idEmpleado );
    return correo;
end // delimiter ;

select idParametro(23) as correo;

-- 4 calcula el total de alquileres por el id de la sucursal ingresada
delimiter //
create function total(id int)
returns int deterministic
begin
	declare resultado int;
    set resultado = (select sum(valor_pagado) from alquiler 
    where id=alquiler.sucursal_alquiler );
    return resultado;
    end // delimiter ;
    
select total(2)as precioTotalAlquiler;

-- 5 calcula el descuento de cada alquiler
delimiter //
create function diferenciaValor(valor_cotizado int,valor_pagado int)
returns int deterministic
begin
	declare descuento int;
    set descuento= (valor_cotizado-valor_pagado);
    return descuento;
end // delimiter ;

select valor_cotizado,valor_pagado, 
diferenciaValor(valor_cotizado,valor_pagado)as descuento 
from alquiler;


