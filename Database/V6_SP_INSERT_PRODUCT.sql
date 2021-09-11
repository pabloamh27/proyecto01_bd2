CREATE OR REPLACE PROCEDURE SP_INSERT_PRODUCT (categoria VARCHAR2 ,l_name VARCHAR2, l_descripcion VARCHAR2, precio number, pyme number) as
cat_id number;
aux number;
begin
    select count(*) into aux from Categoria ct where ct.nombre_categoria=categoria;
    if aux=0 then
        insert into Categoria(nombre_categoria) values (categoria);
        select ct.categoria_id into cat_id from Categoria ct where ct.nombre_categoria=categoria;
    else
        select ct.categoria_id into cat_id from Categoria ct where ct.nombre_categoria=categoria;
    end if;
    insert into Producto (nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values(l_name, l_descripcion, precio, cat_id, pyme);
end;
