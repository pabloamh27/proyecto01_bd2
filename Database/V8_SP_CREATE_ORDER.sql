CREATE OR REPLACE PROCEDURE CREATE_ORDER(
id_cliente number
) as
fecha date;
begin
    insert into Orden( monto_total, estado, fecha_orden, cliente_id) values ( 0, 1, CURRENT_DATE, id_cliente);
end;
/

CREATE OR REPLACE PROCEDURE CREATE_LINE(
orden number,
nombre VARCHAR2,
cantidad NUMBER
) as
cash number(10,2);
product number;
begin
    SELECT SEARCH_PRODUCT(nombre) INTO product FROM dual;
    IF product!=0 THEN
        SELECT (pr.precio_unitario * cantidad) into cash from Producto pr where product=pr.producto_id;
    insert into Linea_de_producto(cantidad, monto, orden_id, producto_id) values (cantidad, cash, orden, product);
    END IF;
end;
/

CREATE or REPLACE TRIGGER TG_MONTO_ORDEN
    AFTER
    INSERT
    ON Linea_de_producto
    FOR EACH ROW
DECLARE
BEGIN
   update Orden ord set ord.monto_total = ord.monto_total + :new.monto where ord.orden_id=:new.orden_id;
END;
/




