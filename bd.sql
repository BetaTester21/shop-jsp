

USE bdcarrito;

CREATE TABLE producto (
  codigoProducto int(11) NOT NULL,
  nombre varchar(100) NOT NULL,
  precio decimal(18,2) NOT NULL,
  imagen varchar(20) NOT NULL,
  PRIMARY KEY (`codigoProducto`)
);

INSERT INTO producto VALUES (1,'Arroz',3.50,'arroz.jpg');
INSERT INTO producto VALUES (2,'Azucar',3.30,'azucar.jpg');
INSERT INTO producto VALUES (3,'Leche',3.50,'leche.jpg');
INSERT INTO producto VALUES (4,'Fideos',2.80,'fideos.jpg');
INSERT INTO producto VALUES (5,'Sibarita',0.50,'sibarita.JPG');
INSERT INTO producto VALUES (6,'Gaseosa',5.50,'gaseosa.jpg');
INSERT INTO producto VALUES (7,'Mermelada',2.20,'mermelada.jpg');
INSERT INTO producto VALUES (8,'Atun',4.50,'atun.jpg');


CREATE TABLE venta (
  codigoVenta int(11) NOT NULL,
  cliente varchar(100) NOT NULL,
  fecha datetime NOT NULL,
  PRIMARY KEY (codigoVenta)
);

INSERT INTO venta VALUES (1,'Jose Perez','2016-06-09');


CREATE TABLE detalleventa (
  codigoVenta int(11) NOT NULL,
  codigoProducto int(11) NOT NULL,
  cantidad decimal(18,2) NOT NULL,
  descuento decimal(18,2) NOT NULL,
  PRIMARY KEY (codigoVenta,codigoProducto),
  KEY FK_DetalleVenta_Producto (codigoProducto)
);

INSERT INTO detalleventa VALUES (1,3,4,100);
INSERT INTO detalleventa VALUES (1,4,2,34.53);
INSERT INTO detalleventa VALUES (1,5,2,0);


CREATE PROCEDURE spF_Ventas_all()
SELECT codigoVenta,cliente,fecha 
FROM venta;

CREATE PROCEDURE spF_producto_all()
BEGIN
SELECT  p.codigoProducto, p.nombre, p.precio, p.imagen
FROM  producto p ORDER BY P.nombre;
END;

--procedimiento para insertar producto
CREATE PROCEDURE spI_producto(INOUT _codigoProducto  int ,
   _nombre  varchar(100) ,_precio  decimal(18, 2),
   _imagen  varchar(100)
)
begin
SELECT IFNULL(MAX(codigoProducto),0)+1 into _codigoProducto FROM producto;
INSERT INTO producto( codigoProducto,nombre, precio, imagen)
VALUES ( _codigoProducto,_nombre,_precio,_imagen);
end;

---procedimiento para actualizar producto
CREATE PROCEDURE spU_producto(_codigoProducto  int ,
   _nombre  varchar(100) ,_precio  decimal(18, 2)
)
BEGIN
UPDATE producto SET nombre = _nombre,precio = _precio
WHERE codigoProducto = _codigoProducto;
end;


CREATE PROCEDURE spI_venta(
   INOUT _codigoVenta  int ,
   _cliente  varchar(100) 
)
BEGIN
-- Codigo autogenerado
SELECT IFNULL(MAX(codigoVenta),0)+1 into _codigoVenta FROM `venta`;
INSERT INTO venta(codigoVenta,cliente,fecha)
VALUES (_codigoVenta,_cliente,CURDATE());
END;


CREATE PROCEDURE spI_detalleventa(
   _codigoVenta  int , _codigoProducto  int ,
   _cantidad  decimal(18, 2) ,_descuento  decimal(18, 2)
)
BEGIN
INSERT INTO detalleventa(codigoVenta,codigoProducto,
   cantidad,descuento)
VALUES (_codigoVenta,_codigoProducto,_cantidad, _descuento);
END;





CREATE PROCEDURE spF_venta_one(
  _codigoVenta  int
)
BEGIN
SELECT
    v.codigoVenta AS CodigoVenta,v.cliente AS Cliente, 
    v.fecha AS Fecha, d.codigoProducto AS CodigoProducto, 
    p.nombre AS Nombre, p.precio AS Precio, 
    d.cantidad AS Cantidad, d.descuento AS Descuento,
    p.precio*d.cantidad AS Parcial,
    ((p.precio*d.cantidad)-d.descuento) AS SubTotal,
    (
    SELECT SUM((dT.cantidad * pT.precio)-dT.descuento) AS TotalPagar
    FROM DetalleVenta AS dT INNER JOIN
        Producto AS pT ON dT.codigoProducto = pT.codigoProducto
    WHERE dT.codigoVenta=v.codigoVenta
    ) AS TotalPagar
FROM 
    Venta AS v INNER JOIN DetalleVenta AS d ON v.codigoVenta = d.codigoVenta INNER JOIN
    Producto AS p ON d.codigoProducto = p.codigoProducto
WHERE v.codigoVenta=_codigoVenta
ORDER BY Nombre;
END;


CREATE  PROCEDURE spF_venta_All(
)
BEGIN
SELECT
    v.codigoVenta AS CodigoVenta,v.cliente AS Cliente, 
    v.fecha AS Fecha,d.codigoProducto AS CodigoProducto, 
    p.nombre AS Nombre, p.precio AS Precio, 
    d.cantidad AS Cantidad, d.descuento AS Descuento,
    p.precio*d.cantidad AS Parcial, ((p.precio*d.cantidad)-d.descuento) AS SubTotal,
    (
    SELECT  SUM((dT.cantidad * pT.precio)-dT.descuento) AS TotalPagar
    FROM DetalleVenta AS dT INNER JOIN
        Producto AS pT ON dT.codigoProducto = pT.codigoProducto
    WHERE dT.codigoVenta=v.codigoVenta) AS TotalPagar
FROM Venta AS v INNER JOIN
    DetalleVenta AS d ON v.codigoVenta = d.codigoVenta INNER JOIN
    Producto AS p ON d.codigoProducto = p.codigoProducto
ORDER BY CodigoVenta, Nombre;
END;


CREATE PROCEDURE spF_producto_one(
_codigoProducto  int )
BEGIN SELECT p.codigoProducto,
    p.nombre, p.precio,    
    p.imagen FROM
    producto p WHERE p.codigoProducto = _codigoProducto
ORDER BY P.nombre;
END;


ALTER TABLE detalleventa
ADD CONSTRAINT FK_DetalleVenta_Producto FOREIGN KEY (codigoProducto) REFERENCES producto (codigoProducto),
ADD CONSTRAINT FK_DetalleVenta_Venta FOREIGN KEY (codigoVenta) REFERENCES venta (codigoVenta);



create table cliente(
codigoCliente int(11) not null,
cliente varchar(100) not null,
apellido varchar(100) not null,
usuario varchar(30) not null,
password varchar(30) not null,
primary key (codigoCliente),
key FK_cliente_venta(cliente)
);
INSERT INTO cliente VALUES (1,'Pedro','Rodriguez Paredes','thereflex','123');

CREATE PROCEDURE spI_cliente(INOUT _codigoCliente  int ,
   _cliente  varchar(100) ,_apellido varchar(100),
   _usuario varchar(30),_password varchar(30)
)
begin
SELECT IFNULL(MAX(codigoCliente),0)+1 into _codigoCliente FROM cliente;
INSERT INTO cliente( codigoCliente,cliente, apellido, usuario, password)
VALUES ( _codigoCliente,_cliente,_apellido,_usuario,_password);
end;

select * from cliente

CALL spI_venta_1('LpKido')

CREATE PROCEDURE spI_venta_1(
_cliente varchar(100)
)
begin
select codigoVenta,cliente,fecha
from venta where cliente=_cliente;
end;

use bdcarrito;

create table credito(
codigoCredito int(5) not null,
codigoVenta int(11) NOT NULL,
monto_venta decimal(18,2) NOT NULL,
nmr_Cuota decimal(18,2) NOT NULL,
PRIMARY KEY (codigoCredito,codigoVenta),
  KEY FK_credito_venta (codigoVenta)
);
CREATE PROCEDURE spI_cuota(INOUT
   _codigoCredito  int ,_codigoVenta int, 
   _monto_venta  decimal(18, 2) ,_nmr_Cuota  decimal(18, 2)
)
BEGIN
SELECT IFNULL(MAX(codigoCredito),0)+1 into  _codigoCredito  FROM credito;
INSERT INTO credito(codigoCredito,codigoVenta,
   monto_venta,nmr_Cuota)
VALUES (_codigoCredito,_codigoVenta,_monto_venta, _nmr_Cuota);
END;


create procedure autogenerado(_cliente varchar(100))
begin
SELECT IFNULL(MAX(codigoVenta),0)+1 as codigo
FROM venta where cliente =_cliente;
end;

create table detalleCredito(
codigoCredito int(5) not null,
monto decimal(18, 2) not null,
fecha_pago datetime NOT NULL,
interes decimal(18,2) not null,
total decimal (18,2)not null,
PRIMARY KEY (codigoCredito),
  KEY FK_detalleCredito_credito (codigoCredito)
)



CREATE PROCEDURE spI_detallecredito(
   _codigoVenta  int , _codigoCredito  int ,
   _monto  decimal(18, 2) ,_interes  decimal(18, 2)
)
BEGIN
INSERT INTO detallecredito(codigoVenta,codigoCredito,
   monto,interes)
VALUES (_codigoVenta,_codigoCredito,_monto, _interes);
END;



------------------Prueba bucle

create procedure prueba(@c int)



	
drop procedure if exists doWhile;
 
CREATE PROCEDURE doWhile(_in int(5))   
BEGIN
DECLARE i INT default 1;

WHILE (i <= _in) DO
    INSERT INTO prueba (cod) values (i);
    SET i = i+1;
END WHILE;
END;
select * from prueba

call doWhile(3)



 
CREATE PROCEDURE doWhile(_in int(5))   
BEGIN
DECLARE i INT default 1;

WHILE (i <= _in) DO
    INSERT INTO prueba (fecha) values (date);
    SET i = i+1;
END WHILE;
END;
select * from prueba

call doWhile(3)