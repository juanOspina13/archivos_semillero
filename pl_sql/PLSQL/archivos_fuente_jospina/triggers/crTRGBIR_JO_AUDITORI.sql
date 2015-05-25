--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_AUDITORI.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla jo_auditori de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE OR replace TRIGGER TRGBIR_JO_AUDITORI
BEFORE INSERT ON fc_auditori
FOR EACH ROW
BEGIN
    SELECT SQ_JO_AUDITORI_AUDICONS.NEXTVAL INTO :NEW.audicons FROM DUAL;
END;