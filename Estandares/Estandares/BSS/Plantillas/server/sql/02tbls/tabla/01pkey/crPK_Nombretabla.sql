/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crPK<NombreTabla>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de la llave primaria tabla <NombreTabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crPK<NombreTabla>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Adicionando llave primaria a la tabla <NombreTabla>

ALTER TABLE <NombreTabla> ADD
    (
        CONSTRAINT pk_<NombreTabla>
        PRIMARY KEY ( campo0001, campoNNNN )
        USING INDEX
        PCTFREE  <NN>
        TABLESPACE <Nombre_Tablespace>
        STORAGE (   INITIAL     <Initial>
                    NEXT        <Next>
                    MINEXTENTS  1
                    MAXEXTENTS  UNLIMITED
                    PCTINCREASE 0
                    FREELISTS   1
                    FREELIST GROUPS 1
                    BUFFER_POOL <Area_Pool>
                )
        PARALLEL(DEGREE <GRADO PARALELISMO>)
        NOLOGGING
    )
/

ALTER INDEX pk_<NombreTabla> noparallel
/
ALTER INDEX pk_<NombreTabla> logging
/