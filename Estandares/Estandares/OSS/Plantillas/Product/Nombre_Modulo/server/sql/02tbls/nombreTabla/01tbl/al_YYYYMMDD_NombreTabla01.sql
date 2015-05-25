
--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : al_YYYYMMDD_<Nombretabla>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Modificacion de la tabla <NombreTabla>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  al_YYYYMMDD_<Nombretabla>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Modifying table <NombreTabla>

ALTER TABLE Nombre_table ADD
(
    <campo0001> <Tipo(Lon)> DEFAULT <val> CONSTRAINT <nn_Tabla_IdEntAttr> NOT NULL,
    <campoNNNN> <Tipo(Lon)>                                               NULL
)
/

PROMPT ... Adding Comments to table [ <NombreTabla> ] ...

COMMENT ON COLUMN <NombreTabla>.<campo0001> IS 'Descripcion campo'
/
COMMENT ON COLUMN <NombreTabla>.<campoNNNN> IS 'Descripcion campo N'
/
