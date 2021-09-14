CREATE OR REPLACE PROCEDURE SP_EDIT_PRODUCT(
nombre VARCHAR2,
descripcion VARCHAR2,
n_desc VARCHAR2,
n_mont NUMBER
) as 
product NUMBER;
old_mont NUMBER;
begin

    SELECT SEARCH_PRODUCT(nombre) INTO product FROM dual;
    IF product!=0 THEN
        IF  nombre!=null then
            UPDATE Producto pr set nombre_producto=n_desc where product=pr.producto_id;
        END IF;
        
        IF n_desc!=null  then
            UPDATE Producto pr set descripcion=n_desc where product=pr.producto_id;
        END IF;
        
        IF n_mont!=null then
            UPDATE Producto pr set pr.precio_unitario=n_mont where product=pr.producto_id;
        END IF;
    END IF;
end;