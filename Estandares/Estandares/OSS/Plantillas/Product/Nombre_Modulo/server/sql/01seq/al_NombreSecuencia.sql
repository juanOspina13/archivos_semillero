/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     al<NombreSecuencia>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    <Breve descripcion de la modificacion que se le hace a la
                  secuencia>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

Prompt   script   :  al<NombreSecuencia>.sql
Prompt   author   :  <Nombre del Desarrollador>
Prompt
Prompt   Altering sequence <NombreSecuencia>

alter sequence <NombreSecuencia>
  increment by          #####
    start with          ####
      maxvalue          #######
         CACHE          [NOCACHE]
         ORDER          [NOORDER]
         CYCLE          [NOCYCLE]
/
