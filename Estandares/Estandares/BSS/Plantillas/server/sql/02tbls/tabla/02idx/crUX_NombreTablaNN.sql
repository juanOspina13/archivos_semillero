/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crUX_<Nombretabla><NN>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion indice unico sobre tabla <NombreTabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crUX_<Nombretabla><NN>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando indice unico UX_<Nombretabla><NN> sobre la tabla <NombreTabla>

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE UNIQUE INDEX UX_<NombreTabla><NN> ON <NombreTabla>
(
    <campo0001>,
    <campoNNNN>
)
    PCTFREE  <NN>
    INITRANS 2
    MAXTRANS 255
    TABLESPACE <Nombre_Tablespace>
    STORAGE (   INITIAL     <Initial>
                NEXT        <Next>
                MINEXTENTS  1
                MAXEXTENTS  UNLIMITED
                PCTINCREASE 0
                FREELISTS   1
                FREELIST GROUPS 1
                BUFFER_POOL <Area_Pool> ) PARALLEL ( DEGREE 4) NOLOGGING
/

ALTER INDEX UX_<NombreTabla><NN> NOPARALLEL
/
ALTER INDEX UX_<NombreTabla><NN> LOGGING
/
