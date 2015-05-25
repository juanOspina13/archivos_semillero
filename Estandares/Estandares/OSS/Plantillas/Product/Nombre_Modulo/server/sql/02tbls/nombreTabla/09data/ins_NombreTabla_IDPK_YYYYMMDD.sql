/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     ins_<NombreTabla>_<PK>_<YYYYMMDD>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>      Descripcion de la Modificacion

******************************************************************/

PROMPT    Script  : ins_<NombreTabla>_<PK>_<YYYYMMDD>.sql
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