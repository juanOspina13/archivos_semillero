--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : al_YYYYMMDD_<NombreTabla>.sql
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

PROMPT - Script  :  al_YYYYMMDD_<NombreTabla>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Modifying table <NombreTabla>

@../07data/up_YYYYMMDD_<NombreTabla>.sql

ALTER TABLE <NombreTabla> MODIFY
(
    <campo0001> <Tipo(Lon)> CONSTRAINT <nn_Tabla_IdEntAttr> NOT NULL
)
/

PROMPT ... Modifying Comments to table [ <NombreTabla> ] ...

COMMENT ON COLUMN <NombreTabla>.<campo0001> IS 'Descripcion campo'
/
