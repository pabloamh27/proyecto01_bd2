CREATE OR REPLACE PROCEDURE CREATE_ORDER(
id_cliente number
) as
fecha date;
begin
    insert into Orden( monto_total, estado, fecha_orden, cliente_id) values ( 0, 0, CURRENT_DATE, id_cliente);
end;
/

CREATE OR REPLACE PROCEDURE CREATE_LINE(
orden number,
nombre VARCHAR2,
cantidad NUMBER
) as
cash number(10,2);
producto number;
begin
    SELECT SEARCH_PRODUCT(nombre) INTO producto FROM dual;
    IF product!=0 THEN
        SELECT (pr.precio_unitario * cantidad) into cash from Producto pr where producto=pr.producto_id;
    insert into Linea_de_producto(cantidad, monto, orden_id, producto_id) values (cantidad, cash, orden, producto);
    END IF;
end;
