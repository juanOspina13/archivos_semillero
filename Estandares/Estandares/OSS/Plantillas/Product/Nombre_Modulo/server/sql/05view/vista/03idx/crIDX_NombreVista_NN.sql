--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : cridx_<NombreVista><NN>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Creacion indice sobre tabla <NombreTabla>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  cridx_<NombreVista><NN>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creating Index idx_<NombreVista><NN> on <NombreTabla>

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX idx_<NombreVista><NN> ON <NombreVista>
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
