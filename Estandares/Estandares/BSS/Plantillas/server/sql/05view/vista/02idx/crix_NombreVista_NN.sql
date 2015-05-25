/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crix<NombreVistaMaterializada>_<NN>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    <Breve descripcion de la funcionalidad de la vista>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crix<NombreVistaMaterializada>_<NN>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando Indice <NombreIndice> sobre la Vista <NombreVista>


ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX ix<NombreVistaMaterializada>_<NN> ON <NombreVista>
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
                BUFFER_POOL <Area_Pool> ) PARALLEL ( DEGREE 4 ) NOLOGGING
/

ALTER INDEX ix_<NombreVista><NN> NOPARALLEL
/
ALTER INDEX ix_<NombreVista><NN> LOGGING
/
