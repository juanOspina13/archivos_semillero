--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crfk_JO_Factura_JO_Cliente01.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación llave foranea JO_Factura
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
ALTER TABLE JO_Factura ADD
    CONSTRAINT fk_JO_Factura_JO_Cliente01
    FOREIGN KEY (facclico)
    REFERENCES  JO_Cliente (cliecodi);