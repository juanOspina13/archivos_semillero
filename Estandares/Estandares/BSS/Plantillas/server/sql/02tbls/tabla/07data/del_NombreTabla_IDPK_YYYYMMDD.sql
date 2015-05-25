/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     del_<NombreTabla>_<IDPK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Borrado de registros de la tabla <Nombre Tabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  del_<NombreTabla>_<IDPK>_<YYYYMMDD>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Borrando informacion de la tabla <NombreTabla>

DELETE <NombreTabla>
WHERE  ...
/

commit ;
