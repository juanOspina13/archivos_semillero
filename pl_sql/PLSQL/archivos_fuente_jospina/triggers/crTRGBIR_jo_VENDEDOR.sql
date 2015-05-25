--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_jo_VENDEDOR.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla JO_vendedor de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TRIGGER TRGBIR_JO_VENDEDOR
BEFORE INSERT ON JO_vendedor
FOR EACH ROW
BEGIN
    SELECT SQ_JO_VENDEDOR_VENDCODI.NEXTVAL INTO :NEW.vendcodi FROM DUAL;
END;