/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crsq_<NombreTabla>_<GE_ENTITY_ATTRIBUTES_ID>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de llave foranea tabla <TablaOrigen>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crsq_<NombreTabla>_<GE_ENTITY_ATTRIBUTES_ID>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando sequencia sq_<NombreTabla>_<GE_ENTITY_ATTRIBUTES_ID>


CREATE SEQUENCE sq_<NombreTabla>_<GE_ENTITY_ATTRIBUTES_ID>
    START WITH          1
    INCREMENT BY        1
    MINVALUE            1
    MAXVALUE            ##########
    CYCLE               [NOCYCLE]
    CACHE ##            [NOCACHE]
    ORDER               [NOORDER]
/
