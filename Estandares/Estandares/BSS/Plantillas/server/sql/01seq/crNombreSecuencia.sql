/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     cr<NombreSecuencia>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripci�n    <Breve descripcion de la creacion de la secuencia>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificaci�n
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  cr<NombreSecuencia>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando Secuencia <NombreSecuencia>


 Create sequence NombreSecuencia
 start with     1
 maxvalue   99999
 [no]cycle
 [no]order
 [cache        20]
/