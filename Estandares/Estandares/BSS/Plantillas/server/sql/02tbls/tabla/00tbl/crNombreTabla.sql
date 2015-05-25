/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     al<NombreSecuencia>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de la tabla <NombreTabla>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  cr<Nombretabla>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creando tabla <NombreTabla>

CREATE TABLE <NombreTabla>
(
    <campo0001> <Tipo(Lon)> DEFAULT <val> CONSTRAINT <nn_Tabla_Campo> NOT NULL,
    <campoNNNN> <Tipo(Lon)>                                               NULL
)
    PCTFREE  <NN>
    PCTUSED  <NN>
    INITRANS 1
    MAXTRANS 255 LOGGING
    TABLESPACE <Nombre_Tablespace>
    STORAGE (   INITIAL     <Initial>
                NEXT        <Next>
                MINEXTENTS  1
                MAXEXTENTS  UNLIMITED
                PCTINCREASE 0
                FREELISTS   1
                FREELIST GROUPS 1
                BUFFER_POOL <Area_Pool> )
/

PROMPT ... Adicionando comentarios a la tabla [ <NombreTabla> ] ...

COMMENT ON TABLE <NombreTabla> IS 'Descripción de la tabla'
/
COMMENT ON COLUMN <NombreTabla>.<campo0001> IS 'Descripcion campo'
/
COMMENT ON COLUMN <NombreTabla>.<campoNNNN> IS 'Descripcion campo N'
/
