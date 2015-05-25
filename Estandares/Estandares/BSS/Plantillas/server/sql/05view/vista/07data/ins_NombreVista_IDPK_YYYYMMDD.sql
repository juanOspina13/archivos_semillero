/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     ins_<NombreVista>_<IDPK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de llave foranea tabla <TablaOrigen>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  ins_<NombreVista>_<IDPK>_<YYYYMMDD>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Insertando registro sobre la tabla <NombreVista>


INSERT INTO <NombreVista>
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
