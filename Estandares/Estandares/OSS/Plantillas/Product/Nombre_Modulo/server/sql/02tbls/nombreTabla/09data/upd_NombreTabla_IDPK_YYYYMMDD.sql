/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     upd_<NombreTabla>_<PK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>      Descripcion de la Modificacion

******************************************************************/

PROMPT    Script  : upd_<NombreTabla>_<PK>_<YYYYMMDD>.sql
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