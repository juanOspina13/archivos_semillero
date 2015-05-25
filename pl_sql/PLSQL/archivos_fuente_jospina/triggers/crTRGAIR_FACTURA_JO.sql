--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGAIR_AV_FACTURA.sql
-- Autor         : Andrés Ricardo Vargas Gómez ( Autor inicial del archivo )
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación disparador para totalizar las facturaciones al insertar en movimiento
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
CREATE OR REPLACE TRIGGER TRGAIR_FACTURA_JO
    AFTER INSERT ON JO_ITEMFACT
    FOR EACH ROW
DECLARE
BEGIN
    UPDATE JO_FACTURA
    SET factvalo = factvalo + ( :NEW.itfavalo * :NEW.itfacant ),
    factiva = factiva + ( ( :new.itfavalo * :new.itfacant ) * ( :new.itfaiva / 100 ) )
    WHERE factcodi = :new.itfafaco;

END;
/