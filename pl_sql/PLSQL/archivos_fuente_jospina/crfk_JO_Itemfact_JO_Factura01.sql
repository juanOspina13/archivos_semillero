--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crfk_JO_Itemfact_JO_Factura01.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación llavee foranea JO_Itemcoti
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
ALTER TABLE JO_Itemfact ADD
    CONSTRAINT fk_JO_Itemfact_JO_Factura01
    FOREIGN KEY (itfafaco)
    REFERENCES  JO_Factura (factcodi);