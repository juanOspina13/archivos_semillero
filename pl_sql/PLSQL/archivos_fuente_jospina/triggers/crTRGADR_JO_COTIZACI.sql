--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGADR_JO_COTIZACI.sql
-- Autor         : Juan ospina
-- Fecha         : <28-02-2015>
--
-- Descripción   : Creación disparador tras borrar de la tabla JO_Cotizaci
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--

CREATE OR REPLACE TRIGGER TRGADR_JO_COTIZACI
AFTER DELETE ON JO_Cotizaci
REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW
BEGIN
    IF(:old.COTIVALO > 100000)THEN
        INSERT INTO JO_Auditori
        (
            AUDICONS,
            AUDIUSUA,
            AUDITERM,
            AUDIFECH,
            AUDIOBSE
        )
        VALUES
        (
            SQ_JO_AUDITORI_AUDICONS.nextval,
            USER,
            SYS_CONTEXT('USERENV','OS_USER'),
            SYSDATE,'DEL-COT-('||:old.COTICODI||') VA'||:old.COTIVALO
        );
    END IF;
END TRGADR_JO_COTIZACI;