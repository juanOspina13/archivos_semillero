--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_COTIZACI.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripci�n   : Creaci�n disparador para autoincremento de la tabla jo_cotizaci de la empresa Ficticia S.A
-- Observaciones :
--
--
/
CREATE OR replace TRIGGER TRGBIR_JO_COTIZACI
BEFORE INSERT ON fc_cotizaci
FOR EACH ROW
BEGIN
    SELECT SQ_JO_COTIZACI_COTICODI.NEXTVAL INTO :NEW.coticodi FROM DUAL;
END;