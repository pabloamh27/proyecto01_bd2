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

CREATE or REPLACE TRIGGER TG_cambio_monto
    AFTER
    UPDATE OF precio_unitario
    ON Producto
    FOR EACH ROW
DECLARE
BEGIN
   insert into Registro( monto_anterior, fecha_registro, producto_id) values (:old.precio_unitario, CURRENT_DATE, :old.producto_id);
END;
/
  
  
--Pruebas del trigger    
--select * from Registro;
--select * from Producto where Producto.producto_id = 5;
--select * from Producto;

--exec producto_update_precio (5, 2500);

--UPDATE Producto
--SET
--    precio_unitario = 5500
--WHERE
--    producto_id = 5;


        