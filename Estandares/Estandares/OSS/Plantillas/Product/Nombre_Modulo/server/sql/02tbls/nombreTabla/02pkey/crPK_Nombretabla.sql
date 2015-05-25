--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crpk_<Nombretabla>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Creacion de la llave primaria tabla <NombreTabla>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  crPK_<Nombretabla>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Adding primary key to table <NombreTabla>

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