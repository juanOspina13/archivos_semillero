/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     upd_<NombreTabla>_<IDPK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripci�n    Actualizaci�n de registros de la tabla <Nombre Tabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificaci�n
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  upd_<NombreTabla>_<IDPK>_<YYYYMMDD>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Actualizando informacion de la tabla <NombreTabla>

UPDATE <NombreTabla>
SET    <campo1> = <...>
WHERE  ...
/

commit ;