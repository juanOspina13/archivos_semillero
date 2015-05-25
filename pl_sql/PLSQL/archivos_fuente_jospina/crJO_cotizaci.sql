--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJO_cotizaci.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015>
--
-- Descripción   : Creación de tabla jo_cotizaci de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TABLE JO_COTIZACI
(
    coticodi        NUMBER(10),
    cotivalo        NUMBER(15,2),
    cotiiva         NUMBER(15,2),
    cotiveco        NUMBER(5),
    cotifege        DATE,
    cotifeve        DATE
);