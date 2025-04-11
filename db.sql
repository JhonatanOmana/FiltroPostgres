create table proveedor(
id_proveedor serial primary key not null,
nombre varchar(100)not null,
contacto varchar(100)not null,
constraint proveedor_nombre_unique unique(nombre)
);

create table producto(
id_producto serial primary key,
nombre varchar(100)not null,
categoria varchar(100)not null,
precio decimal(10, 2)not null,
stock integer not null,
id_proveedor integer not null,
constraint fk_proveedor foreign key (id_proveedor) references proveedor(id_proveedor),
constraint producto_nombre_unique unique(nombre)
);

create table cliente(
id_cliente serial primary key,
nombre varchar(100)not null,
email varchar(100)not null,
telefono varchar(20)not null
);

create table venta(
id_venta serial primary key,
id_cliente integer not null,
fecha timestamp not null default current_timestamp,
constraint fk_cliente foreign key (id_cliente) references cliente(id_cliente),
cantidad integer not null
);

create table detalle_venta(
id_detalle_venta integer,
id_venta integer,
id_producto integer,
cantidad integer not null check(cantidad > 0),
primary key (id_venta,id_producto),
constraint fk_venta foreign key (id_venta) references venta(id_venta),
constraint fk_producto foreign key (id_producto) references producto(id_producto)
);
