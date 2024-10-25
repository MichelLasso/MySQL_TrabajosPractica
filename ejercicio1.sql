Create Table Cliente (
	Idcliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(20) NOT NULL,
	Apellido VARCHAR(20) NOT NULL,
	N°Identificación INT NOT NULL,
	Teléfono INT NOT NULL,
	CorreoEléctronico VARCHAR(20) NOT NULL,
	Dirección VARCHAR(20) NOT NULL
);
Create Table Pedido (
	IdPedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Estado VARCHAR(20) not null,
    FK_cliente INT NOT NULL,
	foreign key(FK_Cliente) references Cliente(Idcliente)
);
describe Pedido;
Create Table Transacción (
Idtransacción INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Fecha VARCHAR(15) NOT NULL,
Total INT NOT NULL,
MetodoPago VARCHAR(30) NOT NULL,
FK_Pedido INT NOT NULL,
foreign key (FK_Pedido) references Pedido(IdPedido)
);
describe Transacción;
Create Table libro(
	Idlibro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CantidadStock  INT NOT NULL,
	Precio  INT NOT NULL,
	FechaPublicación VARCHAR(40) NOT NULL,
	Categoría VARCHAR(40) NOT NULL,
	ISBN INT NOT NULL,
    FK_pedido INT NOT NULL,
    FK_autores INT NOT NULL,
	foreign key (FK_pedido) references Pedido(idPedido),
	foreign key (FK_autores) references Autores(idautores)
);

Create Table Autores(
	Idautores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nombre  VARCHAR(20) NOT NULL,
	Apellido  VARCHAR(20) NOT NULL,
	Nacionalidad VARCHAR(20) NOT NULL,
	FechaNacimiento INT NOT NULL,
    FK_Libro INT NOT NULL,
	foreign key (FK_Libro) references Libro(idLibro)
);
