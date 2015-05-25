--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_ITEMFACT.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla JO_itemfact de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TRIGGER TRGBIR_JO_ITEMFACT
BEFORE INSERT ON JO_itemfact
FOR EACH ROW
BEGIN
    SELECT SQ_JO_ITEMFACT_ITFACONS.NEXTVAL INTO :NEW.itfacons FROM DUAL;
END;