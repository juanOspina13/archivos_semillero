/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crSEQ_<NombreTabla>.sql
  Autor       Nombre del desarrollador que crea la secuencia
  Fecha       Fecha de creacion DD-MM-YYYY

  Descripción

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

Prompt   script   :  crSEQ_<NombreTabla>.sql
Prompt   author   :  <Nombre del desarrollador que crea la secuencia>
Prompt
Prompt   Creating sequence SEQ_<NombreTabla>

create sequence SEQ_<NombreTabla>
    start with       1
    increment by     1
    maxvalue         #############
    cycle            [NOCYCLE]
    cache            [NOCACHE]
    order            [NOORDER]
/
