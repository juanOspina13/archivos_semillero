--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : cr<Nombretabla>.sql
-- Autor         : <Nombre Apellido del Autor> ( Autor inicial del archivo )
-- Fecha         : <DD-MM-YYYY HH24:MI:SS> ( Fecha creación )
--
-- Descripcion   : Creacion de la tabla <NombreTabla>
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- DD-MM-YYYY    <Autor>SAONNNNN
-- Modificacion
--

PROMPT - Script  :  cr<Nombretabla>.sql
PROMPT - Author  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Creating table <NombreTabla>

CREATE TABLE <NombreTabla>
(
    <campo0001> <Tipo(Lon)> DEFAULT <val> CONSTRAINT <nn_Tabla_IdEntAttr> NOT NULL,
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

PROMPT ... Adding Comments to table [ <NombreTabla> ] ...

COMMENT ON TABLE <NombreTabla> IS 'Descripción de la tabla'
/
COMMENT ON COLUMN <NombreTabla>.<campo0001> IS 'Descripcion campo'
/
COMMENT ON COLUMN <NombreTabla>.<campoNNNN> IS 'Descripcion campo N'
/
