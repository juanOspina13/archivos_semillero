/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     ins_<YYYYMMDD>_<NombreTabla>.sql
  Autor       Nombre del Desarrollador
  Fecha       DD-MM-YYYY HH24:MI:SS

  Descripción
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>      Descripcion de la Modificacion

******************************************************************/

PROMPT    Script  : ins_<YYYYMMDD>_<NombreTabla>.sql
PROMPT    Author  : Nombre del Desarrollador
PROMPT
PROMPT    Inserting <NombreTabla> <NOMBRE CAMPO PK> : 'VALOR CAMPO PK'

INSERT INTO <NombreTabla>
(
    CAMPO1,
    CAMPO2,
       .
       .
       .
    CAMPON
)
VALUES
(
    VALOR1,
    VALOR2,
       .
       .
       .
    VALORN
)
/

COMMIT;