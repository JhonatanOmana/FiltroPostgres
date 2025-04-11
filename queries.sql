--1️⃣ Listar los productos con stock menor a 5 unidades.
select nombre,stock 
from producto 
where stock <5;

--2️⃣ Calcular ventas totales de un mes específico.
select sum(p.precio * dv.cantidad) as ventas_totales_marzo_2025
from venta v
join detalle_venta dv on v.id_venta = dv.id_venta
join producto p on dv.id_producto = p.id_producto
where extract (year from v.fecha) = 2025 
and extract (month from v.fecha) =04; 

--3️⃣ Obtener el cliente con más compras realizadas.
select c.nombre, count(v.id_cliente) as total_compras
from cliente c
join venta v on c.id_cliente = v.id_cliente
group by c.id_cliente , c.nombre
order by total_compras desc limit 1;

--4️⃣ Listar los 5 productos más vendidos.
select p.nombre,sum(dv.cantidad) as total_vendido
from producto p
join detalle_venta dv on p.id_producto = dv.id_producto
group by p.id_producto, p.nombre
order by total_vendido desc limit 5;

--5️⃣ Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.
select v.id_venta, v.fecha, c.nombre as cliente, sum(p.precio * dv.cantidad) as total
from venta v
join cliente c on v.id_cliente = c.id_cliente
join detalle_venta dv on v.id_venta = dv.id_venta
join producto p on dv.id_producto = p.id_producto
where v.fecha between '2025-02-11' and '2025-05-11'
group by v.id_venta, v.fecha, c.nombre;

--6️⃣ Identificar clientes que no han comprado en los últimos 6 meses.
select c.nombre, c.email
from cliente c
left join venta v on c.id_cliente = v.id_cliente
where v.fecha is null or v.fecha < current_date - interval '6 months'
group by c.id_cliente, c.nombre,c.email;