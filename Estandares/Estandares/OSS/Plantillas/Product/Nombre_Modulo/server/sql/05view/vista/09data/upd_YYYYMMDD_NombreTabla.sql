/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     upd_<YYYYMMDD>_<NombreTabla>.sql
  Autor       Nombre del Desarrollador
  Fecha       DD-MM-YYYY HH24:MI:SS

  Descripción
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>      Descripcion de la Modificacion

******************************************************************/

PROMPT    Script  : upd_<YYYYMMDD>_<NombreTabla>.sql
PROMPT    Author  : Nombre del Desarrollador
PROMPT
PROMPT    Updating <NombreTabla> <NOMBRE CAMPO PK> : 'VALOR CAMPO PK'

UPDATE <NombreTabla>
   SET <NOMBRECAMPO1>,<NOMBRECAMPO2>,...,<NOMBRECAMPON>
 WHERE CAMPO1 = CONDICION1
   AND CAMPO2 = CONDICION2
            .
            .
            .
   AND CAMPON = CONDICIONN
/

COMMIT;