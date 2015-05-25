/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crvw<NombreVista>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripci�n    <Breve descripcion de la funcionalidad de la vista>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificaci�n
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crvw<NombreVista>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando Vista <NombreVista>

CREATE OR REPLACE VIEW vw<NombreVista> AS
SELECT  Campo1, Campo2, ... CampoN
FROM    Table1, Table2, ... TableN
WHERE   condicion;
/

COMMENT ON VIEW vw<NombreVista> IS 'Descripcion Vista'
/
COMMENT ON COLUMN vw<NombreVista>.Campo1 IS 'Descripci�n campo 1'
/
COMMENT ON COLUMN vw<NombreVista>.CampoN IS 'Descripci�n campo N'
/
