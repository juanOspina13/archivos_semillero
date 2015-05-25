/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     ins_<NombreTabla>_<IDPK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    inserción de registros de la tabla <Nombre Tabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  ins_<NombreTabla>_<IDPK>_<YYYYMMDD>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Insertando registro sobre la tabla <NombreTabla>


INSERT INTO <NombreTabla>
(
    <campo1>,
    <campoN>
)
VALUES
(
    <...>,
    <...>
) ;

commit ;
