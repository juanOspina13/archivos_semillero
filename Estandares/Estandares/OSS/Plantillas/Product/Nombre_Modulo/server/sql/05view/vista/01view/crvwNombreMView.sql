--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crvw<NombreVista>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Creacion de la vista <NombreVista>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  crvw<NombreVista>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creating view vw<NombreVista>

create materialized view vw<NombreVista>
tablespace <NOMBRE_TABLESPACE>
refresh on demand AS (
    SELECT campo1, campo2, ... campoN
      FROM table1, table2, ... tableN
     WHERE condicion
)
/
COMMENT ON MATERIALIZED VIEW vw<NombreVista> IS 'Descripcion Vista'
/
COMMENT ON COLUMN vw<NombreVista>.Campo1 IS 'Descripción campo 1'
/
COMMENT ON COLUMN vw<NombreVista>.CampoN IS 'Descripción campo N'
/