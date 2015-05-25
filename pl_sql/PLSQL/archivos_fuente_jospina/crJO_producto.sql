--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJO_producto.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015>
--
-- Descripción   : Creación de tabla fc_producto de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TABLE JO_PRODUCTO
(
    prodcons        NUMBER(10),
    proddesc        VARCHAR2(100),
    prodcant        NUMBER(10,2),
    prodvalo        NUMBER(15,2)
);