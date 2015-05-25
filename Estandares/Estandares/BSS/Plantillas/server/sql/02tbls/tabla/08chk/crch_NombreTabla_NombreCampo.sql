/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crch_<NombreTabla>_<NombreCampo>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de llave foranea tabla <TablaOrigen>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crch_<NombreTabla>_<NombreCampo>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando constraint de chequeo ch_<NombreTabla>_<NombreCampo> sobre la tabla <NombreTabla>

ALTER TABLE <NombreTabla> ADD
CONSTRAINT ch_<NombreTabla>_<NombreCampo> CHECK ( Field Condition )
/
