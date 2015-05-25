/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     del_<NombreVista>_<IDPK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de llave foranea tabla <TablaOrigen>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  del_<NombreVista>_<IDPK>_<YYYYMMDD>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Borrando informacion de la tabla <NombreVista>

DELETE <NombreVista>
WHERE  ...
/

commit ;
