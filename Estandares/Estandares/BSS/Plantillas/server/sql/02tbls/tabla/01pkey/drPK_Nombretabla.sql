/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     dr<NombrePrimaryKey>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Eliminacion llave primaria tabla <NombreTabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  drPK_<Nombretabla>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Borrando Llave primaria de la tabla <NombreTabla>

ALTER TABLE <NombreTabla> DROP PRIMARY KEY
/
