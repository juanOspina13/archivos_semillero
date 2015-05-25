--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crpk_JO_Repocoti.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla JO_Repocoti
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

ALTER TABLE JO_Repocoti ADD
    CONSTRAINT pk_JO_Repocoti
    PRIMARY KEY (recocons)
    USING INDEX ENABLE;