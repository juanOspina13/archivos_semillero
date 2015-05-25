--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crUX_<Nombretabla><NN>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Creacion indice unico sobre tabla <NombreTabla>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  crUX_<Nombretabla><NN>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creating UNIQUE Index UX_<Nombretabla><NN> on <NombreTabla>

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
