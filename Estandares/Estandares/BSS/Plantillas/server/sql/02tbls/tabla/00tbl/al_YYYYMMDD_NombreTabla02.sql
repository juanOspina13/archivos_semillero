/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     al<NombreSecuencia>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Modificacion de la tabla <NombreTabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */


PROMPT - Script  :  al_YYYYMMDD_<NombreTabla>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Modificando la tabla <NombreTabla>

@../07data/up_YYYYMMDD_<NombreTabla>.sql

ALTER TABLE <NombreTabla> MODIFY
(
    <campo0001> <Tipo(Lon)> CONSTRAINT <nn_Tabla_Campo> NOT NULL
)
/

PROMPT ... Modificando comentarios sobre la tabla [ <NombreTabla> ] ...

COMMENT ON COLUMN <NombreTabla>.<campo0001> IS 'Descripcion campo'
/
