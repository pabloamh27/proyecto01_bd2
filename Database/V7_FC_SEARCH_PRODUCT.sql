CREATE OR REPLACE FUNCTION SEARCH_PRODUCT(
descp varchar2
) return number
is
aux number;
pr_id number;
BEGIN
    select count(*) into aux from Producto pr where descp=pr.nombre_producto or pr.descripcion like CONCAT('%',CONCAT(descp,'%'));
    if aux>1 then
        RETURN 0;
    end if;
    
    if aux=1 then
        select producto_id into pr_id from Producto pr where descp=pr.nombre_producto or pr.descripcion like CONCAT('%',CONCAT(descp,'%'));
        return pr_id;
    end if;
    return 0;
END;

