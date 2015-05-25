/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     ins_<Mens>_<DIV>_<MOD>_<NNNN>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Inserción de registros de la tabla Mensaje
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  ins_<Mens>_<DIV>_<MOD>_<NNNN>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Insertando nuevo mensaje sobre la tabla <Mensaje>

INSERT INTO mensaje
(
    mensdivi,
    mensmodu,
    menscodi,
    mensdesc,
    menscaus,
    mensposo
)
VALUES
(
    <'...'>,
    <'...'>,
    < ... >,
    <'...'>,
    <'...'>,
    <'...'>
) ;

commit ;
