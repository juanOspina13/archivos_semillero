--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crpk_JO_Itemfact.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla JO_Itemfact
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

ALTER TABLE JO_Itemfact ADD
    CONSTRAINT pk_JO_Itemfact
    PRIMARY KEY (itfacons)
    USING INDEX ENABLE;