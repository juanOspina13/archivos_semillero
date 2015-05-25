--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGAUR_JO_COTIZACI.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015>
--
-- Descripción   : Creación disparador tras actualizar en la tabla JO_COTIZACI
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--


CREATE OR REPLACE TRIGGER TRGAUR_JO_COTIZACI
AFTER UPDATE of COTIFEVE ON JO_COTIZACI
REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW
BEGIN
    INSERT INTO JO_AUDITORI
        (
                       AUDIUSUA,
            AUDITERM,
            AUDIFECH,
            AUDIOBSE
        )
    VALUES
        (

            USER,
            SYS_CONTEXT('USERENV','OS_USER'),
            SYSDATE,
            'UPD-COT-('||:old.COTICODI||') VA-('||:old.COTIFEVE||') VN- '||:new.COTIFEVE
        );
END TRGAUR_JO_COTIZACI;

