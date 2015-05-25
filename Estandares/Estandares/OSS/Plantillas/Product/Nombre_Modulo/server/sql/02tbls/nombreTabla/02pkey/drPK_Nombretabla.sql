--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : alpk_<Nombretabla>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Eliminacion llave primaria tabla <NombreTabla>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  drPK_<Nombretabla>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Dropping primary key to table <NombreTabla>

ALTER TABLE <NombreTabla> DROP PRIMARY KEY
/
