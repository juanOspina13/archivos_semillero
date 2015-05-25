/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     del_<YYYYMMDD>_<NombreTabla>.sql
  Autor       Nombre del Desarrollador
  Fecha       DD-MM-YYYY HH24:MI:SS

  Descripción
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>      Descripcion de la Modificacion

******************************************************************/

PROMPT    Script  : del_<YYYYMMDD>_<NombreTabla>.sql.sql
PROMPT    Author  : Nombre del Desarrollador
PROMPT
PROMPT    Deleting <NombreTabla> <NOMBRE CAMPO PK> : 'VALOR CAMPO PK'

DELETE <NombreTabla>
 WHERE CAMPO1 = CONDICION1
   AND CAMPO2 = CONDICION2
            .
            .
            .
   AND CAMPON = CONDICIONN
/

COMMIT;