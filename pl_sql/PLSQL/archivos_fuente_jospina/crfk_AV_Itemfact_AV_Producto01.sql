--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crfk_AV_Itemfact_AV_Producto01.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación llave foranea JO_Itemfact
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
ALTER TABLE JO_Itemfact ADD
    CONSTRAINT fk_JO_Itemfact_JO_Producto01
    FOREIGN KEY (itfaprco)
    REFERENCES  JO_Producto (prodcons);