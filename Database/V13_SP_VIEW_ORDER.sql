
create or replace procedure SP_SELECT_ORDERS (cliente number, condition number, c1 OUT SYS_REFCURSOR) as
begin
    
    if condition=0 then
        
        open c1 for
        SELECT CONCAT('Orden#',ord.orden_id) Orden, ord.monto_total Monto, ord.fecha_orden Fecha, estado FROM Orden ord where ord.cliente_id=cliente;
    
    END IF;
    
    if condition=1 then
        
        open c1 for
        SELECT CONCAT('Orden#',ord.orden_id) Orden, ord.monto_total Monto, ord.fecha_orden Fecha, estado FROM Orden ord where ord.cliente_id=cliente and ord.estado=0;
    
    END IF;
    
    
    if condition=2 then
        
        open c1 for
        SELECT CONCAT('Orden#',ord.orden_id) Orden, ord.monto_total Monto, ord.fecha_orden Fecha, estado FROM Orden ord where ord.cliente_id=cliente and ord.estado=1;
    
    END IF;
    
end;
/