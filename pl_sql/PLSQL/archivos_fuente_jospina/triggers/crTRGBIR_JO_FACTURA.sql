--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_FACTURA.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla JO_factura de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TRIGGER TRGBIR_JO_FACTURA
BEFORE INSERT ON JO_factura
FOR EACH ROW
BEGIN
    SELECT SQ_JO_FACTURA_FACTCODI.NEXTVAL INTO :NEW.factcodi FROM DUAL;
END;