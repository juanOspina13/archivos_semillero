 --
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGAIRACTUALIZAR_COTIZACION_JO.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015 12:00:00>
--
-- Descripción   :ón trigger para totalizar las cotizaciones al insertar en movimiento
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
CREATE OR REPLACE TRIGGER trgairactualizar_cotizacion_JO
   AFTER INSERT ON JO_Itemcoti
   FOR EACH ROW
DECLARE

BEGIN
    UPDATE JO_Cotizaci
    SET cotivalo = cotivalo + (:new.itcovalo*:new.itcocant) , cotiiva=cotiiva+(:new.itcovalo*:new.itcocant)*(:iva/100)
    
    WHERE coticodi = :new.itcococo;
END;
/
