/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crvw<NombreVistaMaterializada>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    <Breve descripcion de la funcionalidad de la vista>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crvw<NombreVistaMaterializada>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando Vista Materializada <NombreVistaMaterializada>

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