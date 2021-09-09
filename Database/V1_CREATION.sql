-- TABLAS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DROP TABLE Cliente;
DROP TABLE Pyme;
DROP TABLE Producto;
DROP TABLE Categoria;
DROP TABLE Orden;
DROP TABLE Linea_de_producto;
DROP TABLE Registro;

CREATE TABLE Cliente (
    cliente_id NUMBER,
    cedula      VARCHAR2(12),
    nombre_cliente      VARCHAR2(45),
    apellido1   VARCHAR2(25),
    apellido2   VARCHAR2(25),
    apodo   VARCHAR2(25),
    telefono_cliente    VARCHAR2(15),
    contraseņa    RAW(50),
    provincia_cliente    VARCHAR2(20),
    PRIMARY KEY ( cliente_id )
);

CREATE TABLE Pyme (
    pyme_id         NUMBER,
    cedula_juridica      VARCHAR2(12),
    nombre_pyme      VARCHAR2(45),
    email           VARCHAR2(85),
    telefono_pyme    VARCHAR2(15),
    clave    RAW(50),
    provincia_pyme    VARCHAR2(20),
    PRIMARY KEY ( pyme_id )
);

CREATE TABLE Categoria (
    categoria_id NUMBER,
    nombre_categoria      VARCHAR2(100),
    PRIMARY KEY ( categoria_id )
);

CREATE TABLE Producto (
    producto_id NUMBER,
    nombre_producto      VARCHAR2(55),
    descripcion   VARCHAR2(255),
    precio_unitario   NUMBER(10,2),
    categoria_id    NUMBER,
    pyme_id     NUMBER,
    PRIMARY KEY ( producto_id ),
    CONSTRAINT fk_categoria_producto
        FOREIGN KEY (categoria_id)
        REFERENCES Categoria (categoria_id),
    CONSTRAINT fk_pyme_producto
        FOREIGN KEY (pyme_id)
        REFERENCES Pyme (pyme_id)
);

CREATE TABLE Registro (
    registro_id NUMBER,
    monto_anterior      NUMBER(10,2),
    fecha_registro   DATE,
    producto_id   NUMBER,
    PRIMARY KEY ( registro_id ),
    CONSTRAINT fk_producto_registro
        FOREIGN KEY (producto_id)
        REFERENCES Producto (producto_id)
);

CREATE TABLE Orden (
    orden_id NUMBER,
    monto_total      NUMBER(10,2),
    estado   NUMBER(1),
    fecha_orden   DATE,
    cliente_id   NUMBER,
    PRIMARY KEY ( orden_id ),
    CONSTRAINT fk_cliente_orden
        FOREIGN KEY (cliente_id)
        REFERENCES Cliente (cliente_id)
);

CREATE TABLE Linea_de_producto (
    linea_id NUMBER,
    cantidad      NUMBER,
    monto   NUMBER(10,2),
    orden_id   NUMBER,
    producto_id   NUMBER,
    PRIMARY KEY ( orden_id ),
    CONSTRAINT fk_orden
        FOREIGN KEY (orden_id)
        REFERENCES Orden (orden_id),
    CONSTRAINT fk_producto_linea
        FOREIGN KEY (producto_id)
        REFERENCES Producto (producto_id)
);




