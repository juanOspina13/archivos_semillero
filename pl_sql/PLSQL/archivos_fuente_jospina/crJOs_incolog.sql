--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJOs_incolog.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015>
--
-- Descripción   : Creación de tabla fc_incolog de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TABLE JO_INCOLOG
(
    inlocons        NUMBER(5),
    inlousua        VARCHAR2(100),
    inloterm        VARCHAR2(100),
    inlofech        DATE,
    inlocoti        NUMBER(10),
    inlofact        NUMBER(10)
);
