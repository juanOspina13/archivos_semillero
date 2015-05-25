--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crpk_JO_Vendedor.sql
-- Autor         :Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de la llave primaria tabla JO_Vendedor
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

ALTER TABLE JO_Vendedor ADD
    CONSTRAINT pk_JO_Vendedor
    PRIMARY KEY (vendcodi)
    USING INDEX ENABLE;