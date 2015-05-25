--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crfk_JO_Itemcoti_AV_Producto01.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015> ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n llave foranea JO_Itemcoti
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
ALTER TABLE JO_Itemcoti ADD
    CONSTRAINT fk_JO_Itemcoti_JO_Producto01
    FOREIGN KEY (itcoprco)
    REFERENCES  JO_Producto (prodcons);