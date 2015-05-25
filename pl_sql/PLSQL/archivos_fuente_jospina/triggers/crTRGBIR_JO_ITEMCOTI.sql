--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_ITEMCOTI.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripci�n   : Creaci�n disparador para autoincremento de la tabla JO_itemcoti de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE OR replace TRIGGER TRGBIR_JO_ITEMCOTI
BEFORE INSERT ON JO_itemcoti
FOR EACH ROW
BEGIN
    SELECT SQ_JO_ITEMCOTI_ITCOCONS.NEXTVAL INTO :NEW.ITCOCONS FROM DUAL;
END;