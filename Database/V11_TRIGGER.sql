CREATE or REPLACE TRIGGER TG_CAMBIO_MONTO
    AFTER
    UPDATE OF precio_unitario
    ON Producto
    FOR EACH ROW
DECLARE
BEGIN
   insert into Registro( monto_anterior, fecha_registro, producto_id) values (:old.precio_unitario, CURRENT_DATE, :old.producto_id);
END;

  
  
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
