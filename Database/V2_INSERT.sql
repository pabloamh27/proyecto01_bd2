insert into Cliente(cedula, nombre_cliente, apellido1, apellido2, apodo, telefono_cliente, contraseña, provincia_cliente) values ('1-1815-0121', 'Pablo', 'Munoz', 'Hidalgo', 'Puvlo', '8431-0740', utl_raw.cast_to_raw('PMH'), 'Guanacaste');
insert into Cliente(cedula, nombre_cliente, apellido1, apellido2, apodo, telefono_cliente, contraseña, provincia_cliente) values ('2-4415-5515', 'Taylor', 'Hernandez', 'Cordoba', 'Santi01', '8465-1302', utl_raw.cast_to_raw('THC'), 'Puntarenas');
insert into Cliente(cedula, nombre_cliente, apellido1, apellido2, apodo, telefono_cliente, contraseña, provincia_cliente) values ('3-5541-1545', 'Alberto', 'Shum', 'Chan', 'ShumChany10', '8745-6212', utl_raw.cast_to_raw('ASC'), 'Heredia');
insert into Cliente(cedula, nombre_cliente, apellido1, apellido2, apodo, telefono_cliente, contraseña, provincia_cliente) values ('9-1545-5465', 'Jaime', 'Rojas', 'Ramirez', 'Jaimito2519', '4545-4554', utl_raw.cast_to_raw('JRR'), 'Alajuela');
insert into Cliente(cedula, nombre_cliente, apellido1, apellido2, apodo, telefono_cliente, contraseña, provincia_cliente) values ('8-7982-5648', 'Deyton', 'Hernandez', 'Cordoba', 'Patas', '8411-2257', utl_raw.cast_to_raw('DHC'), 'Limon');

insert into Categoria(nombre_categoria) values ('Cocina');
insert into Categoria(nombre_categoria) values ('Tecnologia');
insert into Categoria(nombre_categoria) values ('Ropa');
insert into Categoria(nombre_categoria) values ('Placer');
insert into Categoria(nombre_categoria) values ('Carnes');

insert into Pyme( cedula_juridica, nombre_pyme, email, telefono_pyme, clave, provincia_pyme) values ('3-515-5448', 'AstroFeelings', 'afeeling@gmail.com', '5715-2548', utl_raw.cast_to_raw('ronaldouno'), 'San Jose');
insert into Pyme( cedula_juridica, nombre_pyme, email, telefono_pyme, clave, provincia_pyme) values ('3-515-5415', 'TechoSpace', 'technospace@gmail.com', '5744-2548', utl_raw.cast_to_raw('ronaldodos'), 'Alajuela');
insert into Pyme( cedula_juridica, nombre_pyme, email, telefono_pyme, clave, provincia_pyme) values ('3-515-2101', 'PrimeBeef', 'primebeef@gmail.com', '5754-2178', utl_raw.cast_to_raw('ronaldotres'), 'San Jose');
insert into Pyme( cedula_juridica, nombre_pyme, email, telefono_pyme, clave, provincia_pyme) values ('3-515-8452', 'Shoelaces', 'shoelaces@gmail.com', '5715-2542', utl_raw.cast_to_raw('ronaldocuatro'), 'Guanacaste');
insert into Pyme( cedula_juridica, nombre_pyme, email, telefono_pyme, clave, provincia_pyme) values ('3-515-1564', 'Homeandcook', 'handc@gmail.com', '5715-2841', utl_raw.cast_to_raw('ronaldocinco'), 'San Jose');

insert into Producto( nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values ('Smartphone Samsung S5', 'Telefono movil para uso diario', 550000, 2, 2);
insert into Producto( nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values ('Camisa Nike', 'Logo en la parte frontal de color negro con blanco', 15000, 3, 4);
insert into Producto( nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values ('Esposas SexyTime', 'Esposas acolchonadas de color rosa', 10500, 4, 1);
insert into Producto( nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values ('Guantes de cocina C8200', 'Guantes de cocina para evitar el calor', 17500, 1, 5);
insert into Producto( nombre_producto, descripcion, precio_unitario, categoria_id, pyme_id) values ('Rib-Eye Premium USA Prime El Arreo', 'Carne premium el arreo Rib-Eye para asadito con los panas', 45000, 5, 3);

insert into Orden( monto_total, estado, fecha_orden, cliente_id) values (225522, 1, '02-DEC-1997', 2);
insert into Orden( monto_total, estado, fecha_orden, cliente_id) values (455646, 0, '27-NOV-2001', 3);
insert into Orden( monto_total, estado, fecha_orden, cliente_id) values (515465.50, 1, '21-OCT-2008', 4);
insert into Orden( monto_total, estado, fecha_orden, cliente_id) values (564874, 0, '29-OCT-2010', 1);
insert into Orden( monto_total, estado, fecha_orden, cliente_id) values (979879, 1, '12-JAN-2018', 5);

insert into Linea_de_producto( cantidad, monto, orden_id, producto_id) values (1, 550000, 1, 1);
insert into Linea_de_producto( cantidad, monto, orden_id, producto_id) values (2, 30000, 2, 2);
insert into Linea_de_producto( cantidad, monto, orden_id, producto_id) values (69, 724500, 3, 3);
insert into Linea_de_producto( cantidad, monto, orden_id, producto_id) values (2, 35000, 4, 4);
insert into Linea_de_producto( cantidad, monto, orden_id, producto_id) values (10, 450000, 5, 5);

insert into Registro( monto_anterior, fecha_registro, producto_id) values (250000, '05-AUG-1995', 1);
insert into Registro( monto_anterior, fecha_registro, producto_id) values (2500, '08-SEP-1990', 1);
insert into Registro( monto_anterior, fecha_registro, producto_id) values (15000, '09-JUN-1998', 3);
insert into Registro( monto_anterior, fecha_registro, producto_id) values (10000, '07-JUL-2010', 4);
insert into Registro( monto_anterior, fecha_registro, producto_id) values (40000, '01-FEB-2020', 5);

commit;