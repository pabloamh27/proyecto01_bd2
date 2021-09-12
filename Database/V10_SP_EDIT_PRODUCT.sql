CREATE OR REPLACE PROCEDURE SP_EDIT_PRODUCT(
product number,
n_desc VARCHAR2,
n_mont NUMBER,
opc NUMBER
) as 
old_mont NUMBER;
begin
    IF opc=1 then
        UPDATE Producto pr set nombre_producto=n_desc where product=pr.producto_id;
    END IF;
    
    IF opc=2 then
        UPDATE Producto pr set descripcion=n_desc where product=pr.producto_id;
    END IF;
    
    IF opc=3 then
        UPDATE Producto pr set pr.precio_unitario=n_mont where product=pr.producto_id;

    END IF;
end;
/

--CREATE or REPLACE TRIGGER TG_cambio_monto
--    BEFORE
--    UPDATE OF precio_unitario
--    ON Producto
--DECLARE 
--    precio_unitario producto.precio_unitario%TYPE;
--    producto_id producto.producto_id%TYPE;
--BEGIN
--    insert into Registro( monto_anterior, fecha_registro, producto_id) values (producto.precio_unitario = precio_unitario, CURRENT_DATE, :producto_id);
--END;
--/
    
--select * from Registro;
--select * from Producto where Producto.producto_id = 5;

--UPDATE Producto
--SET
--    precio_unitario = 5500
--WHERE
--    producto_id = 5;


        