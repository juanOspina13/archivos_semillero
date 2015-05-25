--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJO_factura.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015>
--
-- Descripción   : Creación de tabla jo_factura de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE  TABLE JO_FACTURA
(
    factcodi        NUMBER(10),
    factvalo        NUMBER(15,2),
    factiva         NUMBER(15,2),
    facclico        NUMBER(5),
    faccotco        NUMBER(10),
    factfege        DATE
);