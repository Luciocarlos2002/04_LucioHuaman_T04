CREATE DATABASE bdsistema
GO
use bdsistema
GO
-- Table: PROVEEDOR
CREATE TABLE PROVEEDOR (
    RUC char(11)  NOT NULL,
    razonsocial varchar(25)  NOT NULL,
    telefono char(20)  NOT NULL,
    email varchar(35)  NOT NULL,
    direccion varchar(50)  NOT NULL,
    tipo varchar(25)  NOT NULL,
    lugar varchar(20)  NOT NULL,
    celular char(20)  NOT NULL,
    CONSTRAINT PROVEEDOR_pk PRIMARY KEY  (RUC)
);
GO
-- Table: PROVEEDOR_DETALLE
CREATE TABLE PROVEEDOR_DETALLE (
    nrofactura int  NOT NULL,
    ruc char(11)  NOT NULL,
    idProducto int  NOT NULL,
    cantidad int  NOT NULL,
    preciocompra float(4)  NOT NULL,
    precioventa float(4)  NOT NULL,
    CONSTRAINT PROVEEDOR_DETALLE_pk PRIMARY KEY  (nrofactura)
);
GO
-- foreign keys
-- Reference: PROVEEDOR_DETALLE_PROVEEDOR (table: PROVEEDOR_DETALLE)
ALTER TABLE PROVEEDOR_DETALLE ADD CONSTRAINT PROVEEDOR_DETALLE_PROVEEDOR
    FOREIGN KEY (ruc)
    REFERENCES PROVEEDOR (RUC);
GO
INSERT INTO PROVEEDOR (ruc, razonsocial, telefono, email, direccion, tipo, lugar, celular) VALUES
('12345678911', 'COCA KOLA A.S.', '(044)-326-569', 'cocakola@gmail.com', 'Av MASICHE #378', 'Fabricante', 'Porvenir', '(044)-94835-8966');
INSERT INTO PROVEEDOR (ruc, razonsocial, telefono, email, direccion, tipo, lugar, celular) VALUES
('20331066703', 'Inkafarma', '(044)-906-234', 'inkafarma@gmail.com', 'AV. DEFENSORES DEL MORRO #1277', 'Farmacia', 'Porvenir', '(044)-12345-8966');
INSERT INTO PROVEEDOR (ruc, razonsocial, telefono, email, direccion, tipo, lugar, celular) VALUES
('20338309041', 'Inca Kola', '(044)-789-234', 'inkakola@gmail.com', 'Avenida Republica De Panama #4050', 'Fabricante', 'Porvenir', '(044)-12345-8966');

GO
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(1,'12345678911', 4, 10, 3.2 , 4.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(2,'12345678911', 4, 30, 3.2 , 5.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(3,'12345678911', 4, 40, 3.2 , 6.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(4,'12345678911', 4, 50, 3.2 , 7.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(5,'12345678911', 4, 20, 3.2 , 8.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(6,'20331066703', 5, 30, 3.2 , 9.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(7,'20331066703', 5, 40, 3.2 , 4.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(8,'20331066703', 5, 50, 3.2 , 5.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(9,'20331066703', 5, 20, 3.2 , 6.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(10,'20331066703', 5, 30, 3.2 , 7.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(11,'20331066703', 5, 40, 3.2 , 8.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(12,'20338309041', 6, 50, 3.2 , 9.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(13,'20338309041', 6, 60, 3.2 , 4.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(14,'20338309041', 6, 20, 3.2 , 5.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(15,'20338309041', 6, 30, 3.2 , 6.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(16,'20338309041', 6, 40, 3.2 , 7.0 );
INSERT INTO PROVEEDOR_DETALLE(nrofactura, ruc, idProducto, cantidad, preciocompra ,precioventa) VALUES
(17,'20338309041', 6, 50, 3.2 , 8.0 );