--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crfk_JO_Cotizaci_JO_Vendedor01.sql
-- Autor         : Juan ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación llave foranea JO_Cotizaci
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

ALTER TABLE JO_Cotizaci ADD
    CONSTRAINT fk_JO_Cotizaci_JO_Vendedor01
    FOREIGN KEY (cotiveco)
    REFERENCES  JO_Vendedor (vendcodi)
    ;