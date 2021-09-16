create or replace procedure SP_VIEW_SALES (pyme number, mes number) as
c1 SYS_REFCURSOR;  
articulos_vendidos number;
pmonto_total number;
name_prod VARCHAR2(55);
mesesito number;
begin

    OPEN c1 for
    select pr.nombre_producto Porducto, SUM(cantidad) Cantidad, SUM(pr.precio_unitario*cantidad) MontoTotal, mes Mes  into name_prod, articulos_vendidos, pmonto_total, mesesito from linea_de_producto ldp
    inner join Producto pr on ldp.producto_id=pr.producto_id
    inner join Orden ord on ldp.orden_id=ord.orden_id
    where pr.pyme_id=pyme and mes=EXTRACT(MONTH FROM ord.fecha_orden) and ord.estado=1
    group by pr.nombre_producto;
    
    DBMS_SQL.RETURN_RESULT(c1);

end;
/

