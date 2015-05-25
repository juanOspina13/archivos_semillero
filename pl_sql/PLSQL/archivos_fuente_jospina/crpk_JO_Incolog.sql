--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crpk_JO_Incolog.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de la llave primaria tabla JO_Incolog
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

ALTER TABLE JO_Incolog ADD
    CONSTRAINT pk_JO_Incolog
    PRIMARY KEY (inlocons)
    USING INDEX ENABLE;