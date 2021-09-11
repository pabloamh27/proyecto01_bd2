CREATE OR REPLACE PROCEDURE CREATE_ORDER(
id_cliente number
) as
fecha date;
begin
    insert into Orden( monto_total, estado, fecha_orden, cliente_id) values ( 0, 0, CURRENT_DATE, id_cliente);
end;

CREATE OR REPLACE PROCEDURE CREATE_LINE(
orden number,
producto NUMBER,
cantidad NUMBER
) as
cash number(10,2);
begin
    select (pr.precio_unitario * cantidad) into cash from Producto pr where producto=pr.producto_id;
    insert into Linea_de_producto(cantidad, monto, orden_id, producto_id) values (cantidad, cash, orden, producto);
end;

CREATE OR REPLACE FUNCTION SEARCH_PRODUCT(
descp varchar2
) return number
is
aux number;
pr_id number;
BEGIN
    select count(*) into aux from Producto pr where descp=pr.nombre_producto or descp like CONCAT(CONCAT('%',pr.descripcion),'%');
    if aux=1 then
        select pr.producto_id into pr_id from Producto pr where descp=pr.nombre_producto or descp like CONCAT(CONCAT('%',pr.descripcion),'%');
        return pr_id;
    end if;
    return 0;
END;