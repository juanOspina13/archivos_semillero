--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_<TablaOrigen>_<TablaDestino><NN>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Creacion de llave foranea tabla <TablaOrigen>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  crFK_<NombreCortoTablaOrigen>_<NombreCortoTablaDestino><NN>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Adding foreing key FK_<NombreCortoTablaOrigen>_<NombreCortoTablaDestino><NN> to table <TablaOrigen>

ALTER TABLE <TablaOrigen> ADD
    (
        CONSTRAINT FK_<NombreCortoTablaOrigen>_<NombreCortoTablaDestino><NN>
        FOREIGN KEY ( campo1, campoN )
        REFERENCES <TablaDestino> ( campo1, campoN )
    )
/
