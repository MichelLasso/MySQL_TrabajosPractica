use autorenta;
-- sucursales
INSERT INTO sucursal (idSucursal, pais, ciudad, direccion, telefono, celular, correo_electronico)
VALUES
    (1, 'Colombia', 'Bogotá', 'Calle 100 # 25-50', '6012345678', '3101234567', 'bogota1@sucursal.co'),
    (2, 'Colombia', 'Medellín', 'Carrera 43A # 10-50', '6043456789', '3112345678', 'medellin1@sucursal.co'),
    (3, 'Colombia', 'Cali', 'Avenida Pasoancho 45-70', '6024567890', '3123456789', 'cali1@sucursal.co'),
    (4, 'Colombia', 'Barranquilla', 'Calle 84 # 35-25', '6055678901', '3134567890', 'barranquilla1@sucursal.co'),
    (5, 'Colombia', 'Cartagena', 'Avenida San Martín 20-10', '6056789012', '3145678901', 'cartagena1@sucursal.co');

-- clientes
INSERT INTO cliente (idCliente, nombre1, nombre2, apellido1, apellido2, cedula, ciudad, direccion, celular, correo_electronico)
VALUES
    (1, 'Juan', 'Carlos', 'Pérez', 'Gómez', 1012345678, 'Bogotá', 'Carrera 5 # 45-20', '3101234567', 'juan.perez@email.com'),
    (2, 'María', 'Fernanda', 'López', 'Martínez', 1098765432, 'Medellín', 'Calle 25 # 80-60', '3112345678', 'maria.lopez@email.com'),
    (3, 'Carlos', 'Andrés', 'Rodríguez', 'Sánchez', 1087654321, 'Cali', 'Avenida 6 # 30-90', '3123456789', 'carlos.rodriguez@email.com'),
    (4, 'Ana', 'Lucía', 'Gómez', 'Paredes', 1076543210, 'Barranquilla', 'Calle 56 # 12-10', '3134567890', 'ana.gomez@email.com'),
    (5, 'Luis', 'Miguel', 'Martínez', 'Hernández', 1065432109, 'Cartagena', 'Avenida San Martín # 200', '3145678901', 'luis.martinez@email.com'),
    (6, 'Sofía', 'Isabela', 'Hernández', 'Lozano', 1023456789, 'Medellín', 'Calle 30 # 60-80', '3108765432', 'sofia.hernandez@email.com'),
    (7, 'Pedro', 'Antonio', 'Ramírez', 'González', 1034567890, 'Cali', 'Avenida 9 # 10-100', '3118765432', 'pedro.ramirez@email.com'),
    (8, 'Isabel', 'Cristina', 'Sierra', 'Rodríguez', 1045678901, 'Barranquilla', 'Calle 12 # 45-60', '3127654321', 'isabel.sierra@email.com'),
    (9, 'Fernando', 'Eduardo', 'Díaz', 'Martínez', 1056789012, 'Cartagena', 'Calle 14 # 80-25', '3136543210', 'fernando.diaz@email.com'),
    (10, 'Carmen', 'Beatriz', 'Torres', 'Ríos', 1067890123, 'Bogotá', 'Calle 50 # 10-30', '3145432109', 'carmen.torres@email.com'),
    (11, 'Luis', 'Felipe', 'Vargas', 'Martínez', 1078901234, 'Medellín', 'Avenida 34 # 12-50', '3154321098', 'luis.vargas@email.com'),
    (12, 'Sandra', 'Patricia', 'Fuentes', 'Navarro', 1089012345, 'Cali', 'Calle 19 # 30-45', '3163210987', 'sandra.fuentes@email.com'),
    (13, 'David', 'Esteban', 'Hernández', 'Suárez', 1090123456, 'Barranquilla', 'Calle 5 # 65-10', '3172109876', 'david.hernandez@email.com'),
    (14, 'Elena', 'Cecilia', 'Cano', 'Pérez', 1101234567, 'Cartagena', 'Avenida Libertador # 300', '3181098765', 'elena.cano@email.com'),
    (15, 'Carlos', 'Eduardo', 'Morales', 'Jiménez', 1112345678, 'Bogotá', 'Calle 40 # 80-15', '3190987654', 'carlos.morales@email.com'),
    (16, 'Julia', 'María', 'Ramírez', 'González', 1123456789, 'Medellín', 'Calle 88 # 30-75', '3209876543', 'julia.ramirez@email.com'),
    (17, 'Javier', 'Alberto', 'Sánchez', 'Hernández', 1134567890, 'Cali', 'Calle 10 # 90-50', '3218765432', 'javier.sanchez@email.com'),
    (18, 'Raquel', 'Verónica', 'Paredes', 'López', 1145678901, 'Barranquilla', 'Avenida 10 # 25-60', '3227654321', 'raquel.paredes@email.com'),
    (19, 'Guillermo', 'Alfonso', 'García', 'Rojas', 1156789012, 'Cartagena', 'Calle 24 # 120-90', '3236543210', 'guillermo.garcia@email.com'),
    (20, 'Patricia', 'Elena', 'Méndez', 'Suárez', 1167890123, 'Bogotá', 'Calle 78 # 56-10', '3245432109', 'patricia.mendez@email.com'),
    (21, 'Manuel', 'Antonio', 'Vega', 'Torres', 1178901234, 'Medellín', 'Carrera 7 # 65-40', '3254321098', 'manuel.vega@email.com'),
    (22, 'Beatriz', 'Elena', 'Rodríguez', 'Serrano', 1189012345, 'Cali', 'Avenida 8 # 40-90', '3263210987', 'beatriz.rodriguez@email.com'),
    (23, 'Diego', 'Fernando', 'Hernández', 'Martínez', 1190123456, 'Barranquilla', 'Carrera 15 # 120-30', '3272109876', 'diego.hernandez@email.com'),
    (24, 'Mónica', 'Cristina', 'Pérez', 'Hernández', 1201234567, 'Cartagena', 'Calle 60 # 200-15', '3281098765', 'monica.perez@email.com'),
    (25, 'José', 'Luis', 'González', 'Paredes', 1212345678, 'Bogotá', 'Avenida 15 # 75-90', '3290987654', 'jose.gonzalez@email.com'),
    (26, 'Patricia', 'Isabel', 'Sánchez', 'Lopez', 1223456789, 'Medellín', 'Calle 11 # 30-20', '3309876543', 'patricia.sanchez@email.com'),
    (27, 'Julio', 'César', 'Martínez', 'Vargas', 1234567890, 'Cali', 'Avenida 3 # 10-70', '3318765432', 'julio.martinez@email.com'),
    (28, 'Cecilia', 'Sofía', 'Rodríguez', 'García', 1245678901, 'Barranquilla', 'Calle 24 # 85-100', '3327654321', 'cecilia.rodriguez@email.com'),
    (29, 'Ricardo', 'Alberto', 'Mora', 'Ríos', 1256789012, 'Cartagena', 'Calle 80 # 40-60', '3336543210', 'ricardo.mora@email.com'),
    (30, 'Iván', 'Fernando', 'González', 'Martínez', 1267890123, 'Bogotá', 'Carrera 40 # 50-60', '3345432109', 'ivan.gonzalez@email.com');

-- vehiculo
INSERT INTO vehiculo (idVehiculo, tipo, placa, referencia, modelo, puertas, capacidad, sunroof, motor, color)
VALUES
    (1, 'Sedán', 'ABC123', 'Toyota Corolla', '2024', 4, 5, 'Eléctrico', '1.8L', 'Blanco'),
    (2, 'SUV', 'XYZ456', 'Honda CR-V', '2023', 5, 7, 'Panorámico', '2.4L', 'Negro'),
    (3, 'Camioneta', 'LMN789', 'Ford F-150', '2022', 4, 6, 'No', '3.5L', 'Azul'),
    (4, 'Hatchback', 'JKL345', 'Volkswagen Golf', '2021', 5, 5, 'Eléctrico', '1.4L', 'Rojo'),
    (5, 'Deportivo', 'QWE234', 'Chevrolet Camaro', '2023', 2, 4, 'Panorámico', '6.2L', 'Amarillo'),
    (6, 'SUV', 'FRT567', 'Mazda CX-5', '2020', 5, 5, 'No', '2.5L', 'Gris'),
    (7, 'Sedán', 'GHJ890', 'Hyundai Sonata', '2022', 4, 5, 'Eléctrico', '2.0L', 'Verde'),
    (8, 'Camioneta', 'VBN112', 'Chevrolet Silverado', '2021', 4, 5, 'No', '5.3L', 'Naranja'),
    (9, 'Deportivo', 'MNX654', 'Porsche 911', '2023', 2, 2, 'Panorámico', '3.0L', 'Negro'),
    (10, 'SUV', 'BVC213', 'Kia Sportage', '2022', 5, 5, 'No', '2.4L', 'Blanco'),
    (11, 'Hatchback', 'PLK546', 'Ford Focus', '2021', 5, 5, 'Eléctrico', '2.0L', 'Azul'),
    (12, 'Camioneta', 'JHG342', 'Toyota Tacoma', '2023', 4, 5, 'No', '3.5L', 'Rojo'),
    (13, 'Sedán', 'RFG987', 'Nissan Altima', '2020', 4, 5, 'No', '2.5L', 'Plata'),
    (14, 'SUV', 'ZXC765', 'Hyundai Tucson', '2024', 5, 5, 'Panorámico', '2.4L', 'Verde'),
    (15, 'Deportivo', 'TYU234', 'Ferrari F8', '2023', 2, 2, 'Panorámico', '3.9L', 'Rojo'),
    (16, 'Hatchback', 'QWE678', 'Mini Cooper', '2021', 3, 4, 'No', '1.6L', 'Amarillo'),
    (17, 'Sedán', 'DFG321', 'BMW 3 Series', '2023', 4, 5, 'Eléctrico', '2.0L', 'Gris'),
    (18, 'Camioneta', 'GHK123', 'Ram 1500', '2022', 4, 5, 'No', '5.7L', 'Blanco'),
    (19, 'SUV', 'JKL890', 'Jeep Grand Cherokee', '2023', 5, 7, 'Panorámico', '3.6L', 'Negro'),
    (20, 'Deportivo', 'PLM654', 'Lamborghini Huracán', '2023', 2, 2, 'Panorámico', '5.2L', 'Amarillo'),
    (21, 'Sedán', 'VCX321', 'Audi A4', '2020', 4, 5, 'No', '2.0L', 'Azul'),
    (22, 'SUV', 'TYU234', 'Nissan X-Trail', '2021', 5, 5, 'Eléctrico', '2.5L', 'Rojo'),
    (23, 'Camioneta', 'GHJ111', 'Ford Ranger', '2024', 4, 5, 'No', '2.3L', 'Gris'),
    (24, 'Deportivo', 'VBN456', 'Chevrolet Corvette', '2022', 2, 2, 'Panorámico', '6.2L', 'Plata'),
    (25, 'Hatchback', 'LMK987', 'Honda Civic', '2023', 5, 5, 'No', '1.8L', 'Blanco'),
    (26, 'Sedán', 'JKL765', 'Mercedes-Benz C-Class', '2021', 4, 5, 'Eléctrico', '2.0L', 'Negro'),
    (27, 'SUV', 'DFG234', 'Toyota Highlander', '2024', 5, 7, 'No', '3.5L', 'Plata'),
    (28, 'Camioneta', 'OPR567', 'GMC Sierra', '2023', 4, 5, 'No', '5.3L', 'Rojo'),
    (29, 'Deportivo', 'TGH345', 'Aston Martin Vantage', '2023', 2, 2, 'Panorámico', '4.0L', 'Verde'),
    (30, 'SUV', 'VBC678', 'Ford Escape', '2022', 5, 5, 'No', '2.5L', 'Azul');

-- lugar de mantenimiento
INSERT INTO lugar_mantenimiento (idLugar_mantenimiento, nombre, nombre1_dueño, nombre2_dueño, apellido1_dueño, apellido2_dueño, telefono, correo_electronico, pais, ciudad, direccion)
VALUES
    (1, 'AutoMecánica Rodríguez', 'Carlos', 'Andrés', 'Rodríguez', 'González', '3101234567', 'carlos.rodriguez@auto.com', 'Colombia', 'Bogotá', 'Calle 45 # 60-10'),
    (2, 'Mecánica El Rápido', 'Juan', 'Pablo', 'López', 'Martínez', '3112345678', 'juan.lopez@rapido.com', 'Colombia', 'Medellín', 'Carrera 12 # 30-25'),
    (3, 'Taller Jalisco', 'Luis', 'Fernando', 'Martínez', 'García', '3123456789', 'luis.martinez@jalisco.com', 'Colombia', 'Cali', 'Avenida 4 # 10-50'),
    (4, 'Mecánica Total', 'Marta', 'Lucía', 'Gómez', 'Fernández', '3134567890', 'marta.gomez@total.com', 'Colombia', 'Barranquilla', 'Calle 72 # 15-40'),
    (5, 'Taller de Autos Bogotanos', 'José', 'Alberto', 'Sánchez', 'Ríos', '3145678901', 'jose.sanchez@bogotanos.com', 'Colombia', 'Bogotá', 'Calle 35 # 75-20'),
    (6, 'Mecánica Express', 'Isabel', 'Cristina', 'Hernández', 'Paredes', '3156789012', 'isabel.hernandez@express.com', 'Colombia', 'Cartagena', 'Avenida 10 # 20-60'),
    (7, 'AutoServicios Medellín', 'Ricardo', 'Antonio', 'Vega', 'Pérez', '3167890123', 'ricardo.vega@autosmedellin.com', 'Colombia', 'Medellín', 'Calle 50 # 80-15'),
    (8, 'Taller Mecánico El Sol', 'Carlos', 'Eduardo', 'Sierra', 'López', '3178901234', 'carlos.sierra@elsol.com', 'Colombia', 'Cali', 'Carrera 8 # 30-35'),
    (9, 'Taller San Juan', 'Ana', 'María', 'Torres', 'Jiménez', '3189012345', 'ana.torres@sanjuan.com', 'Colombia', 'Barranquilla', 'Calle 20 # 45-25'),
    (10, 'Servicios Automotrices', 'Fernando', 'Luis', 'García', 'Vargas', '3190123456', 'fernando.garcia@autos.com', 'Colombia', 'Cartagena', 'Avenida 50 # 100-5'),
    (11, 'Mecánica Los Andes', 'Manuel', 'Antonio', 'Ríos', 'Suárez', '3201234567', 'manuel.rios@andes.com', 'Colombia', 'Bogotá', 'Carrera 10 # 40-80'),
    (12, 'Mecánica del Valle', 'Julio', 'César', 'Cano', 'Morales', '3212345678', 'julio.cano@valle.com', 'Colombia', 'Medellín', 'Avenida 60 # 25-70'),
    (13, 'Taller Los Pinos', 'Sara', 'Beatriz', 'Fuentes', 'Navarro', '3223456789', 'sara.fuentes@pinos.com', 'Colombia', 'Cali', 'Carrera 20 # 40-10'),
    (14, 'Mecánica J y J', 'Roberto', 'Carlos', 'Sánchez', 'Herrera', '3234567890', 'roberto.sanchez@jj.com', 'Colombia', 'Barranquilla', 'Calle 10 # 30-80'),
    (15, 'Taller San Martín', 'Verónica', 'Elena', 'Vargas', 'Mendoza', '3245678901', 'veronica.vargas@sanmartin.com', 'Colombia', 'Cartagena', 'Calle 60 # 15-40'),
    (16, 'Taller Rápido', 'Juan', 'Carlos', 'Álvarez', 'Ramírez', '3256789012', 'juan.alvarez@rapido.com', 'Colombia', 'Medellín', 'Carrera 22 # 55-90'),
    (17, 'Mecánica El Jaguar', 'Alfredo', 'Eduardo', 'Jiménez', 'Ramírez', '3267890123', 'alfredo.jimenez@jaguar.com', 'Colombia', 'Cali', 'Avenida 18 # 65-20'),
    (18, 'AutoReparación Ríos', 'Patricia', 'Isabel', 'Martínez', 'González', '3278901234', 'patricia.martinez@rios.com', 'Colombia', 'Barranquilla', 'Calle 35 # 25-10'),
    (19, 'Mecánica Central', 'Carlos', 'Eduardo', 'Lozano', 'Paredes', '3289012345', 'carlos.lozano@central.com', 'Colombia', 'Cartagena', 'Avenida 30 # 40-60'),
    (20, 'Taller Los Amigos', 'Luis', 'Felipe', 'Morales', 'Jaramillo', '3290123456', 'luis.morales@amigos.com', 'Colombia', 'Bogotá', 'Calle 60 # 35-80'),
    (21, 'Mecánica Móvil', 'Jessica', 'Alejandra', 'Vásquez', 'Torres', '3301234567', 'jessica.vasquez@movil.com', 'Colombia', 'Medellín', 'Carrera 5 # 90-10'),
    (22, 'Taller El Encuentro', 'Miguel', 'Ángel', 'Ramírez', 'González', '3312345678', 'miguel.ramirez@encuentro.com', 'Colombia', 'Cali', 'Avenida 50 # 70-90'),
    (23, 'Servicios Automotrices Rápidos', 'Cristina', 'Estefanía', 'Torres', 'Castaño', '3323456789', 'cristina.torres@rapidos.com', 'Colombia', 'Barranquilla', 'Calle 40 # 20-15'),
    (24, 'Taller El Progreso', 'Antonio', 'Javier', 'Moreno', 'López', '3334567890', 'antonio.moreno@progreso.com', 'Colombia', 'Cartagena', 'Calle 30 # 80-60'),
    (25, 'Mecánica La Nueva Era', 'Raquel', 'Cecilia', 'Hernández', 'Martínez', '3345678901', 'raquel.hernandez@nuevaera.com', 'Colombia', 'Medellín', 'Carrera 10 # 80-25'),
    (26, 'Taller El Camino', 'Pedro', 'Luis', 'Gómez', 'López', '3356789012', 'pedro.gomez@camino.com', 'Colombia', 'Cali', 'Avenida 5 # 90-10'),
    (27, 'Mecánica López', 'Olga', 'Victoria', 'Suárez', 'Pérez', '3367890123', 'olga.suarez@lopez.com', 'Colombia', 'Barranquilla', 'Calle 15 # 50-60'),
    (28, 'Taller El Águila', 'Antonio', 'José', 'González', 'Rodríguez', '3378901234', 'antonio.gonzalez@aguila.com', 'Colombia', 'Cartagena', 'Avenida 18 # 45-70'),
    (29, 'Mecánica del Caribe', 'Carmen', 'Teresa', 'Méndez', 'Vásquez', '3389012345', 'carmen.mendez@caribe.com', 'Colombia', 'Medellín', 'Calle 100 # 55-20'),
    (30, 'AutoMecánica La Esperanza', 'Felipe', 'Esteban', 'Ramírez', 'Serrano', '3390123456', 'felipe.ramirez@esperanza.com', 'Colombia', 'Cali', 'Avenida 12 # 40-60');

-- empleados
INSERT INTO empleado (idEmpleado, nombre1, nombre2, apellido1, apellido2, ciudad, celular, correo_electronico, idSucursal)
VALUES
    (1, 'Carlos', 'Eduardo', 'Gómez', 'Hernández', 'Bogotá', '3101234567', 'carlos.gomez@sucursal1.com', 1),
    (2, 'Ana', 'María', 'Sánchez', 'Martínez', 'Bogotá', '3112345678', 'ana.sanchez@sucursal1.com', 1),
    (3, 'Juan', 'Carlos', 'López', 'Ramírez', 'Medellín', '3123456789', 'juan.lopez@sucursal2.com', 2),
    (4, 'Luis', 'Felipe', 'Pérez', 'González', 'Medellín', '3134567890', 'luis.perez@sucursal2.com', 2),
    (5, 'Isabel', 'Cecilia', 'Torres', 'Vargas', 'Cali', '3145678901', 'isabel.torres@sucursal3.com', 3),
    (6, 'Ricardo', 'Antonio', 'Vega', 'Suárez', 'Cali', '3156789012', 'ricardo.vega@sucursal3.com', 3),
    (7, 'Jessica', 'Lucía', 'García', 'Castaño', 'Barranquilla', '3167890123', 'jessica.garcia@sucursal4.com', 4),
    (8, 'Fernando', 'Luis', 'Ramírez', 'Martínez', 'Barranquilla', '3178901234', 'fernando.ramirez@sucursal4.com', 4),
    (9, 'Roberto', 'Carlos', 'Hernández', 'Morales', 'Cartagena', '3189012345', 'roberto.hernandez@sucursal5.com', 5),
    (10, 'Verónica', 'Estefanía', 'Vásquez', 'Paredes', 'Cartagena', '3190123456', 'veronica.vasquez@sucursal5.com', 5),
    (11, 'Miguel', 'Ángel', 'Jiménez', 'Cano', 'Bogotá', '3201234567', 'miguel.jimenez@sucursal1.com', 1),
    (12, 'Patricia', 'Isabel', 'Gómez', 'López', 'Bogotá', '3212345678', 'patricia.gomez@sucursal1.com', 1),
    (13, 'Carlos', 'Alberto', 'Vargas', 'González', 'Medellín', '3223456789', 'carlos.vargas@sucursal2.com', 2),
    (14, 'Sandra', 'María', 'Pérez', 'Ríos', 'Medellín', '3234567890', 'sandra.perez@sucursal2.com', 2),
    (15, 'Antonio', 'José', 'Suárez', 'López', 'Cali', '3245678901', 'antonio.suarez@sucursal3.com', 3),
    (16, 'Carmen', 'Victoria', 'Mendoza', 'Fuentes', 'Cali', '3256789012', 'carmen.mendoza@sucursal3.com', 3),
    (17, 'Javier', 'Ricardo', 'Torres', 'Morales', 'Barranquilla', '3267890123', 'javier.torres@sucursal4.com', 4),
    (18, 'Cristina', 'Gabriela', 'Lozano', 'Vargas', 'Barranquilla', '3278901234', 'cristina.lozano@sucursal4.com', 4),
    (19, 'Eduardo', 'Felipe', 'Ramírez', 'Jaramillo', 'Cartagena', '3289012345', 'eduardo.ramirez@sucursal5.com', 5),
    (20, 'Luis', 'Fernando', 'González', 'Torres', 'Cartagena', '3290123456', 'luis.gonzalez@sucursal5.com', 5),
    (21, 'María', 'Teresa', 'Sánchez', 'Ríos', 'Medellín', '3301234567', 'maria.sanchez@sucursal2.com', 2),
    (22, 'David', 'Antonio', 'Hernández', 'Lopez', 'Medellín', '3312345678', 'david.hernandez@sucursal2.com', 2),
    (23, 'Rosa', 'Estefanía', 'Jiménez', 'Martínez', 'Cali', '3323456789', 'rosa.jimenez@sucursal3.com', 3),
    (24, 'Carlos', 'Iván', 'Torres', 'Ríos', 'Cali', '3334567890', 'carlos.torres@sucursal3.com', 3),
    (25, 'Patricia', 'Lucía', 'Morales', 'Hernández', 'Barranquilla', '3345678901', 'patricia.morales@sucursal4.com', 4),
    (26, 'Esteban', 'Fernando', 'González', 'Pérez', 'Barranquilla', '3356789012', 'esteban.gonzalez@sucursal4.com', 4),
    (27, 'Lorena', 'Gabriela', 'Sánchez', 'Vega', 'Cartagena', '3367890123', 'lorena.sanchez@sucursal5.com', 5),
    (28, 'Víctor', 'Manuel', 'Martínez', 'López', 'Cali', '3378901234', 'victor.martinez@sucursal3.com', 3),
    (29, 'Lucía', 'Estefanía', 'Jiménez', 'Torres', 'Medellín', '3389012345', 'lucia.jimenez@sucursal2.com', 2),
    (30, 'Jorge', 'Héctor', 'Ramírez', 'González', 'Barranquilla', '3390123456', 'jorge.ramirez@sucursal4.com', 4);
    
-- sucursal vehiculo
INSERT INTO sucursal_vehiculo (idSucursal_vehiculo, idSucursal, idVehiculo)
VALUES
    (1, 1, 1),  -- Sucursal 1, Vehículo 1
    (2, 1, 2),  -- Sucursal 1, Vehículo 2
    (3, 1, 3),  -- Sucursal 1, Vehículo 3
    (4, 1, 4),  -- Sucursal 1, Vehículo 4
    (5, 1, 5),  -- Sucursal 1, Vehículo 5
    (6, 1, 6),  -- Sucursal 1, Vehículo 6
    (7, 1, 7),  -- Sucursal 1, Vehículo 7
    (8, 2, 8),  -- Sucursal 2, Vehículo 8
    (9, 2, 9),  -- Sucursal 2, Vehículo 9
    (10, 2, 10), -- Sucursal 2, Vehículo 10
    (11, 2, 11), -- Sucursal 2, Vehículo 11
    (12, 2, 12), -- Sucursal 2, Vehículo 12
    (13, 2, 13), -- Sucursal 2, Vehículo 13
    (14, 3, 14), -- Sucursal 3, Vehículo 14
    (15, 3, 15), -- Sucursal 3, Vehículo 15
    (16, 3, 16), -- Sucursal 3, Vehículo 16
    (17, 3, 17), -- Sucursal 3, Vehículo 17
    (18, 4, 18), -- Sucursal 4, Vehículo 18
    (19, 4, 19), -- Sucursal 4, Vehículo 19
    (20, 4, 20), -- Sucursal 4, Vehículo 20
    (21, 4, 21), -- Sucursal 4, Vehículo 21
    (22, 4, 22), -- Sucursal 4, Vehículo 22
    (23, 5, 23), -- Sucursal 5, Vehículo 23
    (24, 5, 24), -- Sucursal 5, Vehículo 24
    (25, 5, 25), -- Sucursal 5, Vehículo 25
    (26, 5, 26), -- Sucursal 5, Vehículo 26
    (27, 5, 27), -- Sucursal 5, Vehículo 27
    (28, 5, 28), -- Sucursal 5, Vehículo 28
    (29, 5, 29), -- Sucursal 5, Vehículo 29
    (30, 5, 30); -- Sucursal 5, Vehículo 30

-- sucursal cliente
INSERT INTO sucursal_cliente (idSucursal_cliente, idSucursal, idCliente)
VALUES
    (1, 1, 1),  -- Sucursal 1, Cliente 1
    (2, 1, 2),  -- Sucursal 1, Cliente 2
    (3, 1, 3),  -- Sucursal 1, Cliente 3
    (4, 1, 4),  -- Sucursal 1, Cliente 4
    (5, 1, 5),  -- Sucursal 1, Cliente 5
    (6, 1, 6),  -- Sucursal 1, Cliente 6
    (7, 1, 7),  -- Sucursal 1, Cliente 7
    (8, 1, 8),  -- Sucursal 1, Cliente 8
    (9, 2, 9),  -- Sucursal 2, Cliente 9
    (10, 2, 10), -- Sucursal 2, Cliente 10
    (11, 2, 11), -- Sucursal 2, Cliente 11
    (12, 2, 12), -- Sucursal 2, Cliente 12
    (13, 2, 13), -- Sucursal 2, Cliente 13
    (14, 3, 14), -- Sucursal 3, Cliente 14
    (15, 3, 15), -- Sucursal 3, Cliente 15
    (16, 3, 16), -- Sucursal 3, Cliente 16
    (17, 4, 17), -- Sucursal 4, Cliente 17
    (18, 4, 18), -- Sucursal 4, Cliente 18
    (19, 4, 19), -- Sucursal 4, Cliente 19
    (20, 4, 20), -- Sucursal 4, Cliente 20
    (21, 4, 21), -- Sucursal 4, Cliente 21
    (22, 5, 22), -- Sucursal 5, Cliente 22
    (23, 5, 23), -- Sucursal 5, Cliente 23
    (24, 5, 24), -- Sucursal 5, Cliente 24
    (25, 5, 25), -- Sucursal 5, Cliente 25
    (26, 5, 26), -- Sucursal 5, Cliente 26
    (27, 5, 27), -- Sucursal 5, Cliente 27
    (28, 5, 28), -- Sucursal 5, Cliente 28
    (29, 5, 29), -- Sucursal 5, Cliente 29
    (30, 5, 30); -- Sucursal 5, Cliente 30
-- alquiler
INSERT INTO alquiler (idAlquiler, sucursal_alquiler, sucursal_entrega, idEmpleado, idCliente, fecha_salida, fecha_llegada, fecha_esperada, porcentaje_descuento, valor_cotizado, valor_pagado, valor_semanal, valor_dia)
VALUES
    (1, 1, 3, 1, 1, '2024-11-01', '2024-11-05', '2024-11-05', 10, 250000, 225000, 50000, 8000),
    (2, 2, 4, 2, 2, '2024-11-02', '2024-11-08', '2024-11-06', 15, 350000, 297500, 70000, 10500),
    (3, 3, 1, 3, 3, '2024-11-03', '2024-11-07', '2024-11-07', 0, 200000, 200000, 40000, 6000),
    (4, 4, 2, 4, 4, '2024-11-04', '2024-11-10', '2024-11-08', 5, 400000, 380000, 80000, 12000),
    (5, 5, 1, 5, 5, '2024-11-05', '2024-11-09', '2024-11-13', 20, 450000, 360000, 90000, 13500),
    (6, 1, 2, 6, 6, '2024-11-06', '2024-11-10', '2024-11-10', 10, 270000, 243000, 54000, 8100),
    (7, 2, 5, 7, 7, '2024-11-07', '2024-11-11', '2024-11-12', 0, 320000, 320000, 64000, 9600),
    (8, 3, 4, 8, 8, '2024-11-08', '2024-11-12', '2024-11-15', 25, 380000, 285000, 76000, 11400),
    (9, 4, 5, 9, 9, '2024-11-09', '2024-11-13', '2024-11-14', 10, 500000, 450000, 100000, 15000),
    (10, 5, 3, 10, 10, '2024-11-10', '2024-11-14', '2024-11-16', 30, 600000, 420000, 120000, 18000),
    (11, 1, 5, 11, 11, '2024-11-11', '2024-11-15', '2024-11-15', 10, 280000, 252000, 56000, 8400),
    (12, 2, 3, 12, 12, '2024-11-12', '2024-11-16', '2024-11-19', 20, 360000, 288000, 72000, 10800),
    (13, 3, 2, 13, 13, '2024-11-13', '2024-11-17', '2024-11-17', 0, 210000, 210000, 42000, 6300),
    (14, 4, 1, 14, 14, '2024-11-14', '2024-11-19', '2024-11-19', 15, 420000, 357000, 84000, 12600),
    (15, 5, 4, 15, 15, '2024-11-15', '2024-11-20', '2024-11-20', 0, 500000, 500000, 100000, 15000),
    (16, 1, 3, 16, 16, '2024-11-16', '2024-11-20', '2024-11-18', 10, 230000, 207000, 46000, 6900),
    (17, 2, 1, 17, 17, '2024-11-17', '2024-11-21', '2024-11-21', 5, 320000, 304000, 64000, 9600),
    (18, 3, 5, 18, 18, '2024-11-18', '2024-11-22', '2024-11-23', 20, 400000, 320000, 80000, 12000),
    (19, 4, 2, 19, 19, '2024-11-19', '2024-11-23', '2024-11-25', 0, 450000, 450000, 90000, 13500),
    (20, 5, 1, 20, 20, '2024-11-20', '2024-11-24', '2024-11-24', 10, 550000, 495000, 110000, 16500),
    (21, 1, 4, 21, 21, '2024-11-21', '2024-11-25', '2024-11-26', 25, 300000, 225000, 60000, 9000),
    (22, 2, 3, 22, 22, '2024-11-22', '2024-11-27', '2024-11-29', 0, 370000, 370000, 74000, 11100),
    (23, 3, 5, 23, 23, '2024-11-23', '2024-11-28', '2024-12-01', 30, 480000, 336000, 96000, 14400),
    (24, 4, 2, 24, 24, '2024-11-24', '2024-11-29', '2024-12-02', 10, 360000, 324000, 72000, 10800),
    (25, 5, 3, 25, 25, '2024-11-25', '2024-11-30', '2024-12-01', 5, 400000, 380000, 80000, 12000),
    (26, 1, 4, 26, 26, '2024-11-26', '2024-11-30', '2024-12-03', 0, 450000, 450000, 90000, 13500),
    (27, 2, 1, 27, 27, '2024-11-27', '2024-12-01', '2024-12-02', 15, 370000, 314500, 74000, 11100),
    (28, 3, 5, 28, 28, '2024-11-28', '2024-12-02', '2024-12-04', 25, 520000, 390000, 104000, 15600),
    (29, 4, 2, 29, 29, '2024-11-29', '2024-12-03', '2024-12-05', 0, 460000, 460000, 92000, 13800),
    (30, 5, 3, 30, 30, '2024-11-30', '2024-12-04', '2024-12-06', 5, 390000, 370500, 78000, 11700);
    
-- mantenimiento
INSERT INTO mantenimiento (idMantenimeinto, idVehiculo, descripcion, fecha_llegada, fecha_salida, idLugar_mantenimiento)
VALUES
    (1, 1, 'Cambio de aceite y revisión general', '2024-11-01', '2024-11-03', 1),
    (2, 2, 'Reemplazo de frenos y alineación', '2024-11-02', '2024-11-05', 2),
    (3, 3, 'Inspección y reemplazo de filtros de aire', '2024-11-03', '2024-11-04', 3),
    (4, 4, 'Reparación de suspensión y amortiguadores', '2024-11-04', '2024-11-07', 4),
    (5, 5, 'Cambio de llantas y revisión de frenos', '2024-11-05', '2024-11-09', 5),
    (6, 6, 'Reemplazo de batería y revisión de sistema eléctrico', '2024-11-06', '2024-11-06', 1),
    (7, 7, 'Revisión de motor y cambio de bujías', '2024-11-07', '2024-11-08', 2),
    (8, 8, 'Inspección de sistema de refrigeración y cambio de mangueras', '2024-11-08', '2024-11-11', 3),
    (9, 9, 'Revisión de transmisión y cambio de aceite de caja', '2024-11-09', '2024-11-10', 4),
    (10, 10, 'Reemplazo de embrague y alineación', '2024-11-10', '2024-11-13', 5),
    (11, 11, 'Revisión de frenos y revisión de suspensión', '2024-11-11', '2024-11-14', 1),
    (12, 12, 'Cambio de correa de distribución y revisión de motor', '2024-11-12', '2024-11-16', 2),
    (13, 13, 'Reemplazo de frenos y aceite de motor', '2024-11-13', '2024-11-13', 3),
    (14, 14, 'Inspección de sistema de combustible y cambio de filtros', '2024-11-14', '2024-11-18', 4),
    (15, 15, 'Revisión general y mantenimiento preventivo', '2024-11-15', '2024-11-17', 5),
    (16, 16, 'Inspección de luces y reparación de sistema eléctrico', '2024-11-16', '2024-11-18', 1),
    (17, 17, 'Reemplazo de llantas y alineación de dirección', '2024-11-17', '2024-11-21', 2),
    (18, 18, 'Reparación de sistema de frenos y revisión de motor', '2024-11-18', '2024-11-20', 3),
    (19, 19, 'Mantenimiento general y revisión de frenos', '2024-11-19', '2024-11-23', 4),
    (20, 20, 'Cambio de aceite, revisión de transmisión y frenos', '2024-11-20', '2024-11-22', 5),
    (21, 21, 'Reemplazo de bujías y revisión de sistema eléctrico', '2024-11-21', '2024-11-22', 1),
    (22, 22, 'Inspección de suspensión y cambio de amortiguadores', '2024-11-22', '2024-11-25', 2),
    (23, 23, 'Revisión de frenos y cambio de aceite de motor', '2024-11-23', '2024-11-27', 3),
    (24, 24, 'Reemplazo de llantas y alineación', '2024-11-24', '2024-11-27', 4),
    (25, 25, 'Revisión de transmisión y sistema eléctrico', '2024-11-25', '2024-11-29', 5),
    (26, 26, 'Cambio de aceite y revisión de frenos', '2024-11-26', '2024-11-28', 1),
    (27, 27, 'Inspección de motor y reemplazo de filtros', '2024-11-27', '2024-11-30', 2),
    (28, 28, 'Reparación de sistema de dirección y revisión de frenos', '2024-11-28', '2024-11-29', 3),
    (29, 29, 'Revisión general y cambio de bujías', '2024-11-29', '2024-12-02', 4),
    (30, 30, 'Reemplazo de batería y revisión del sistema eléctrico', '2024-11-30', '2024-12-03', 5);
