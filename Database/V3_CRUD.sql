-- ============================================================================

--                                 CRUD

-- ============================================================================
--                                 ORDEN
-- ============================================================================

create or replace procedure orden_insert (
new_monto_total NUMBER,
new_estado   NUMBER,
new_fecha_orden   DATE,
new_cliente_id   NUMBER
) AS

begin
    insert into Orden( monto_total, estado, fecha_orden, cliente_id) values ( new_monto_total, new_estado, new_fecha_orden, new_cliente_id);
end;
/

create or replace procedure orden_update (
new_orden_id NUMBER,
new_monto_total NUMBER,
new_estado   NUMBER,
new_fecha_orden   DATE,
new_cliente_id   NUMBER
) AS

begin
    update Orden set orden_id = new_orden_id, monto_total = new_monto_total, estado = new_estado, fecha_orden = new_fecha_orden, cliente_id = new_cliente_id;
end;
/

create or replace procedure orden_delete (
new_orden_id NUMBER
) AS
begin
    delete from Orden where orden_id = new_orden_id;
end;
/

-- ============================================================================
--                                 Cliente
-- ============================================================================
create or replace procedure cliente_insert (
    new_cedula      VARCHAR2,
    new_nombre_cliente      VARCHAR2,
    new_apellido1   VARCHAR2,
    new_apellido2   VARCHAR2,
    new_apodo   VARCHAR2,
    new_telefono_cliente    VARCHAR2,
    new_contraseña    VARCHAR2,
    new_provincia_cliente    VARCHAR2
    ) AS
    new_pass raw(50);
begin
    new_pass:= utl_raw.cast_to_raw(new_contraseña);
    insert into Cliente(cedula, nombre_cliente, apellido1, apellido2, apodo, telefono_cliente, contraseña, provincia_cliente) values ( new_cedula, new_nombre_cliente, new_apellido1, new_apellido2, new_apodo, new_telefono_cliente, new_pass, new_provincia_cliente);
end;
/

create or replace procedure cliente_update (
    old_id NUMBER,
    new_cliente_id NUMBER,
    new_cedula      VARCHAR2,
    new_nombre_cliente      VARCHAR2,
    new_apellido1   VARCHAR2,
    new_apellido2   VARCHAR2,
    new_apodo   VARCHAR2,
    new_telefono_cliente    VARCHAR2,
    new_contraseña    VARCHAR2,
    new_provincia_cliente    VARCHAR2
    )  AS
    new_pass raw(50);
begin
    new_pass:= utl_raw.cast_to_raw(new_contraseña);
    update Cliente set cliente_id = new_cliente_id, cedula = new_cedula, nombre_cliente = new_nombre_cliente, apellido1 = new_apellido1, apellido2 = new_apellido2, apodo = new_apodo, telefono_cliente = new_telefono_cliente , contraseña = new_pass, provincia_cliente = new_provincia_cliente
    where cliente_id = old_id;
end;
/


create or replace procedure cliente_delete (
    new_cliente_id NUMBER
    ) AS
begin
    delete from Cliente where cliente_id = new_cliente_id;
end;
/

-- ============================================================================
--                                 Producto
-- ============================================================================
create or replace procedure producto_insert (
    new_nombre_producto      VARCHAR2,
    new_descripcion   VARCHAR2,
    new_precio_unitario   NUMBER,
    new_categoria_id    NUMBER,
    new_pyme_id     NUMBER
    ) AS

begin
    insert into Producto( nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values (new_nombre_producto, new_descripcion, new_precio_unitario, new_categoria_id, new_pyme_id);
end;
/

create or replace procedure producto_update (
    new_producto_id NUMBER,
    new_nombre_producto      VARCHAR2,
    new_descripcion   VARCHAR2,
    new_precio_unitario   NUMBER,
    new_categoria_id    NUMBER,
    new_pyme_id     NUMBER
    ) AS

begin
    update Producto set producto_id = new_producto_id, nombre_producto  = new_nombre_producto, descripcion = new_descripcion, precio_unitario = new_precio_unitario, categoria_id = new_categoria_id, pyme_id = new_pyme_id;
end;
/

create or replace procedure delete_producto (
    new_producto_id NUMBER
    ) AS
begin
    delete from Producto where producto_id = new_producto_id;
end;
/

-- ============================================================================
--                                 Pyme
-- ============================================================================
create or replace procedure pyme_insert (
    new_cedula_juridica      VARCHAR2,
    new_nombre_pyme      VARCHAR2,
    new_email           VARCHAR2,
    new_telefono_pyme    VARCHAR2,
    new_clave    VARCHAR2,
    new_provincia_pyme    VARCHAR2
    )  AS
    new_pass raw(50);
begin
    new_pass:= utl_raw.cast_to_raw(new_clave);
    insert into Pyme( cedula_juridica, nombre_pyme, email, telefono_pyme, clave, provincia_pyme) values ( new_cedula_juridica, new_nombre_pyme, new_email, new_telefono_pyme, new_pass, new_provincia_pyme);
end;
/

create or replace procedure update_pyme (
    old_id NUMBER,
    new_pyme_id         NUMBER,
    new_cedula_juridica      VARCHAR2,
    new_nombre_pyme      VARCHAR2,
    new_email           VARCHAR2,
    new_telefono_pyme    VARCHAR2,
    new_clave    VARCHAR2,
    new_provincia_pyme    VARCHAR2
    ) AS
    new_pass raw(50);
begin
    new_pass:= utl_raw.cast_to_raw(new_clave);
    update Pyme set pyme_id = new_pyme_id, cedula_juridica = new_cedula_juridica, nombre_pyme = new_nombre_pyme, email = new_email, telefono_pyme = new_telefono_pyme, clave = new_pass, provincia_pyme = new_provincia_pyme
    where pyme_id=old_id;
end;
/

create or replace procedure pyme_delete (
    new_pyme_id         NUMBER
    ) AS
begin
    delete from Pyme where pyme_id = new_pyme_id;
end;
/

-- ============================================================================
--                                 Categoria
-- ============================================================================
create or replace procedure categoria_insert  (
    new_nombre_categoria      VARCHAR2
    ) AS

begin
    insert into Categoria( nombre_categoria) values ( new_nombre_categoria);
end;
/

create or replace procedure categoria_update   (
    new_categoria_id NUMBER,
    new_nombre_categoria      VARCHAR2
    ) AS
begin
    update Categoria set categoria_id = new_categoria_id, nombre_categoria = new_nombre_categoria;
end;
/

create or replace procedure categoria_delete as
new_categoria_id number;
begin
    delete from Categoria where categoria_id = new_categoria_id;
end;
/

-- ============================================================================
--                                 Linea de producto
-- ============================================================================
create or replace procedure linea_de_producto_insert (
    new_cantidad      NUMBER,
    new_monto   NUMBER,
    new_orden_id   NUMBER,
    new_producto_id   NUMBER
    ) AS

begin
    insert into Linea_de_producto( cantidad, monto, orden_id, producto_id) values (new_cantidad, new_monto, new_orden_id, new_producto_id);
end;
/

create or replace procedure linea_de_producto_update (
    new_linea_id NUMBER,
    new_cantidad      NUMBER,
    new_monto   NUMBER,
    new_orden_id   NUMBER,
    new_producto_id   NUMBER
    ) AS
    
begin
    update Linea_de_producto set linea_id = new_linea_id, cantidad = new_cantidad, monto = new_monto, orden_id = new_orden_id, producto_id = new_producto_id;
end;
/

create or replace procedure linea_de_producto_delete as
    new_linea_id number;
begin
    delete from Linea_de_producto where linea_id = new_linea_id;
end;
/

-- ============================================================================
--                                 Registro
-- ============================================================================
create or replace procedure registro_insert (
    new_monto_anterior      NUMBER,
    new_fecha_registro   DATE,
    new_producto_id   NUMBER
    ) AS

begin
    insert into Registro( monto_anterior, fecha_registro, producto_id) values ( new_monto_anterior, new_fecha_registro, new_producto_id);
end;
/

create or replace procedure registro_update (
    new_registro_id NUMBER,
    new_monto_anterior      NUMBER,
    new_fecha_registro   DATE,
    new_producto_id   NUMBER
    ) AS
begin
    update Registro set registro_id = new_registro_id, monto_anterior = new_monto_anterior, fecha_registro = new_fecha_registro, producto_id = new_producto_id;
end;
/

create or replace procedure registro_delete(
    new_registro_id NUMBER
    ) AS
begin
    delete from Registro where registro_id = new_registro_id;
end;
/





