/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     upd_<NombreVista>_<IDPK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de llave foranea tabla <TablaOrigen>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  upd_<NombreVista>_<IDPK>_<YYYYMMDD>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Actualizando informacion de la Vista <NombreVista>

UPDATE <NombreVista>
SET    <campo1> = <...>
WHERE  ...
/

commit ;