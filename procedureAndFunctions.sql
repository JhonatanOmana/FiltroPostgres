-- procedimientos 

--1 Un procedimiento almacenado para registrar una venta.
create or replace procedure registrar_venta(
p_id_cliente integer,
p_id_producto integer,
p_cantidad integer
)
language plpgsql
as $$
declare
	v_stock_actual integer
begin


--2 Validar que el cliente exista.
if not exists 
(select 1 from cliente 
where id_cliente = p.id_cliente) 
then raise exception 'el cliente con id % no existe',p.id_cliente;

--3 Verificar que el stock sea suficiente antes de procesar la venta.
select stock into v_stock_actual
from producto p
where id_producto = p.id_producto;

--4 Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
--5 Si hay stock, se realiza el registro de la venta.