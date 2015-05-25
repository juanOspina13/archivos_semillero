--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crpk_jo_Cotizaci.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla JO_Cotizaci
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

ALTER TABLE JO_Cotizaci ADD
    CONSTRAINT pk_JO_Cotizaci
    PRIMARY KEY (coticodi)
    USING INDEX ENABLE;