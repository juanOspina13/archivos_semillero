--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crfk_JO_Itemcoti_JO_Cotizaci01.sql
-- Autor         : Juan ospina( Autor inicial del archivo )
-- Fecha         : <28-02-2015> ( Fecha creación )
--
-- Descripción   : Creación llave foranea JO_Itemcoti
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
ALTER TABLE JO_Itemcoti ADD
    CONSTRAINT fk_JO_Itemcoti_JO_Cotizaci01
    FOREIGN KEY (itcococo)
    REFERENCES  JO_Cotizaci (coticodi);