/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo      crIX_<Nombretabla><NN>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion indice sobre tabla <NombreTabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crIX_<Nombretabla><NN>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando indice IX_<Nombretabla><NN> sobre la tabla <NombreTabla>

CREATE GLOBAL TEMPORARY INDEX IX_<NombreTabla><NN> ON <NombreTabla>
(
    <campo0001>,
    <campoNNNN>
) on commit DELETE rows
/
