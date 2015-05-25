--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_PRODUCTO.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla JO_producto de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE TRIGGER TRGBIR_JO_PRODUCTO
BEFORE INSERT ON JO_producto
FOR EACH ROW
BEGIN
    SELECT SQ_JO_PRODUCTO_PRODCONS.NEXTVAL INTO :NEW.prodcons FROM DUAL;
END;