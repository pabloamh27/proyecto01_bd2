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
        SELECT precio_unitario INTO old_mont FROM Producto pr where product=pr.producto_id;
        insert into Registro( monto_anterior, fecha_registro, producto_id) values ( old_mont, CURRENT_DATE, product);
    END IF;
end;