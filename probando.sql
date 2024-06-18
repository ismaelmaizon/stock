use stockdb;

CREATE TABLE productos (
	id INT NOT NULL AUTO_INCREMENT,
	Tipo varchar(10) NOT NULL,
	Descripcion varchar(50) NOT NULL,
	Ancho INT NOT NULL,
	Alto INT NOT NULL,
	Izq INT NOT NULL,
	Derc INT NOT NULL,
	Precio_U INT NOT NULL,
    Primary key (id)
);
INSERT INTO productos (Tipo, Descripcion, Ancho, Alto, Izq, Derc, Precio_U) VALUES
('Tipo1', 'Descripcion1', 100, 200, 10, 20, 30000),
('Tipo2', 'Descripcion2', 110, 210, 15, 25, 31000);
SELECT * FROM productos;

DROP TABLE productos;


CREATE TABLE lugar (
	id INT NOT NULL AUTO_INCREMENT,
	fullname varchar(20) NOT NULL,
	id_producto INT NOT NULL,
    stock INT NOT NULL,
    Primary key (id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

INSERT INTO lugar (fullname, id_producto, stock) VALUES
('Lugar1', 1, 15),
('Lugar2', 2, 16);

SELECT * FROM lugar;








/*
CREATE TABLE allProductos (
	idproduct INT(10) NOT NULL,
	idlugar INT(10) NOT NULL,
    stock_total INT(10) NOT NULL,
    total INT(30) NOT NULL,
    Primary key (idproduct),
    FOREIGN KEY (idproduct) REFERENCES productos(id),
    FOREIGN KEY (idlugar) REFERENCES lugar(id)
);*/


