--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_jo_INCOLOG.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla JO_incolog de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TRIGGER TRGBIR_JO_INCOLOG
BEFORE INSERT ON JO_incolog
FOR EACH ROW
BEGIN
    SELECT SQ_JO_INCOLOG_INLOCONS.NEXTVAL INTO :NEW.inlocons FROM DUAL;
END;