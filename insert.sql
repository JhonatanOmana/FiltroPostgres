-- inserciones proveedores

insert into proveedor (id_proveedor,nombre,contacto)values 
(1,'samsung','1@gmail.com'),
(2,'xiomi','2@gmail.com'),
(3,'iphone','3@gmail.com'),
(4,'huawei','4@gmail.com'),
(5,'alcatel','5@gmail.com'),
(6,'opo','6@gmail.com'),
(7,'xiaom','7@gmail.com'),
(8,'ipone','8@gmail.com'),
(9,'huwei','9@gmail.com'),
(10,'alcatl','10@gmail.com'),
(11,'motoola','11@gmail.com'),
(12,'smsung','12@gmail.com'),
(13,'iphne','13@gmail.com'),
(14,'alatel','14@gmail.com'),
(15,'xiaoi','15@gmail.com');


-- inserciones productos

insert into producto (nombre,categoria,precio,stock,id_proveedor)values
('iphone 15','pro max',123.01,50,1),
('redmi 12','pro max',123.01,50,2),
('y9','pro max',123.01,50,3),
('zzzz','pro max',123.01,50,4),
('iphone 12','pro max',123.01,50,5),
('s24','pro max',123.01,50,6),
('s23','pro max',123.01,50,7),
('s22','pro max',123.01,50,8),
('galaxys4','pro max',123.01,50,9),
('iphone16','pro max',123.01,50,10),
('iphone14','pro max',123.01,50,11),
('iphone13','pro max',123.01,50,12),
('iphone12','pro max',123.01,50,13),
('iphone11','pro max',123.01,50,14),
('iphone61','pro max',123.01,4,14),
('iphonex','pro max',123.01,50,15);

insert into producto (nombre,categoria,precio,stock,id_proveedor)values
('iphone61','pro max',123.01,4,14);


-- inserciones clientes 

insert into cliente (nombre,email,telefono) values
('juan','juan@gmail.com','12345'),
('camilo','camilo@gmail.com','12345'),
('freiler','freiler@gmail.com','12345'),
('jaime','jaime@gmail.com','12345'),
('andres','andres@gmail.com','12345'),
('wilmer','wilmer@gmail.com','12345'),
('jesus','jesus@gmail.com','12345'),
('juanpa','juanpa@gmail.com','12345'),
('Danna','Danna@gmail.com','12345'),
('michelle','michelle@gmail.com','12345'),
('jhonatan','jhonatan@gmail.com','12345'),
('luis','luis@gmail.com','12345'),
('nelson','nelson@gmail.com','12345'),
('pedro','pedro@gmail.com','12345'),
('stiven','stiven@gmail.com','12345');


-- inserciones ventas

insert into venta (id_venta,id_cliente,fecha,cantidad)values
(1,1,'2025-04-11 10:43.00',50),
(21,2,'2025-04-11 10:43.00',50),
(31,3,'2025-04-11 10:43.00',50),
(41,4,'2025-04-11 10:43.00',50),
(51,5,'2025-04-11 10:43.00',50),
(61,6,'2025-04-11 10:43.00',50),
(71,7,'2025-04-11 10:43.00',50),
(81,8,'2025-04-11 10:43.00',50),
(91,9,'2025-04-11 10:43.00',50),
(101,10,'2025-04-11 10:43.00',50),
(111,11,'2025-04-11 10:43.00',50),
(121,12,'2025-04-11 10:43.00',50),
(131,13,'2025-04-11 10:43.00',50),
(141,14,'2025-04-11 10:43.00',50),
(151,15,'2025-04-11 10:43.00',50);

insert into venta (id_venta,id_cliente,fecha,cantidad)values
(71,7,'2023-04-11 10:43.00',50),
(81,8,'2020-04-11 10:43.00',50),
(91,9,'2022-04-11 10:43.00',50),
(101,10,'2024-04-11 10:43.00',50),
(111,11,'2024-04-11 10:43.00',50),
(121,12,'2024-04-11 10:43.00',50),
(131,13,'2024-04-11 10:43.00',50);


-- inserciones dettalles de ventas

insert into detalle_venta(id_venta,id_producto,cantidad)values
(1,1,10),
(2,2,20),
(3,3,30),
(4,4,40),
(5,5,50),
(6,6,60),
(7,7,70),
(8,8,80),
(9,9,90),
(10,10,100),
(11,11,200),
(12,12,300),
(13,13,400),
(14,14,500),
(15,15,600);