--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGBIR_JO_CLIENTE.sql
-- Autor         : Juan Ospina
-- Fecha         : <27-02-2015>
--
-- Descripción   : Creación disparador para autoincremento de la tabla fc_cliente de la empresa Ficticia S.A
-- Observaciones :
--
--

CREATE OR REPLACE TRIGGER TRGBIR_JO_CLIENTE
BEFORE INSERT ON jo_cliente
FOR EACH ROW
BEGIN
    SELECT SQ_JO_CLIENTE_CLIECODI.NEXTVAL INTO :NEW.cliecodi FROM DUAL;
END;