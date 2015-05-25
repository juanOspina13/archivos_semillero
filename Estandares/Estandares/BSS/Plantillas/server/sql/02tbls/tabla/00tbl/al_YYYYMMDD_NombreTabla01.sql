/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     al_YYYYMMDD_<Nombretabla>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    <Breve descripcion de la modificacion de la tabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */


PROMPT - Script  :  al_YYYYMMDD_<Nombretabla>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Modificando tabla <NombreTabla>

ALTER TABLE Nombre_table ADD
(
    <campo0001> <Tipo(Lon)> DEFAULT <val> CONSTRAINT <nn_Tabla_Campo> NOT NULL,
    <campoNNNN> <Tipo(Lon)>                                               NULL
)
/

PROMPT ... Adicionando Comentarios a la tabla [ <NombreTabla> ] ...

COMMENT ON COLUMN <NombreTabla>.<campo0001> IS 'Descripcion campo'
/
COMMENT ON COLUMN <NombreTabla>.<campoNNNN> IS 'Descripcion campo N'
/
