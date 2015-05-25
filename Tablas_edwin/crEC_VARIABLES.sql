--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crEC_VARIABLES.sql
-- Autor         : Edwin Sebastian Calderon Gomez ( ecalderon )
-- Fecha         : 06-04-2015 17:28:29 ( Fecha creación )
--
-- Descripción   : Creación de la tabla EC_VARIABLES
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 06-04-2015    ecalderon.SAO305895
-- Modificación
--

PROMPT - Script  :  crEC_VARIABLES.sql
PROMPT - Author  :  Edwin Sebastian Calderon Gomez
PROMPT
PROMPT - Creating table EC_VARIABLES

CREATE TABLE EC_VARIABLES
(
     NEG_CDGO VARCHAR2( 5 )     CONSTRAINT NN_EC_VARIABLES_338727 NOT NULL,
     VAR_NAME VARCHAR2( 32 )     CONSTRAINT NN_EC_VARIABLES_338728 NOT NULL,
     VAR_FNTE VARCHAR2( 2 )     CONSTRAINT NN_EC_VARIABLES_338729 NOT NULL,
     VAR_CDGO VARCHAR2( 32 )     CONSTRAINT NN_EC_VARIABLES_338730 NOT NULL,
     VAR_EXPRESION VARCHAR2( 1024 )     CONSTRAINT NN_EC_VARIABLES_338731 NOT NULL,
     VAR_HELP VARCHAR2( 64 ),
     VAR_CLASS CHAR( 1 )     CONSTRAINT NN_EC_VARIABLES_338733 NOT NULL,
     VAR_TYPE CHAR( 1 )     CONSTRAINT NN_EC_VARIABLES_338734 NOT NULL,
     VAR_PRECEDENCE NUMBER( 10 )     CONSTRAINT NN_EC_VARIABLES_338735 NOT NULL,
     VAR_ID NUMBER( 10 )     CONSTRAINT NN_EC_VARIABLES_338736 NOT NULL,
     VAR_LAST_VAL VARCHAR2( 1024 )     CONSTRAINT NN_EC_VARIABLES_338755 NOT NULL)
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_GENERAL
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [EC_VARIABLES]...
comment on table EC_VARIABLES is 'VAIABLES';

PROMPT ... Adding Comments to columns of table  [EC_VARIABLES]...
comment on column EC_VARIABLES.NEG_CDGO is 'CODIGO DE NEGOCIO';
comment on column EC_VARIABLES.VAR_NAME is 'NOMBRE';
comment on column EC_VARIABLES.VAR_FNTE is 'FUENTE';
comment on column EC_VARIABLES.VAR_CDGO is 'CODIGO';
comment on column EC_VARIABLES.VAR_EXPRESION is 'EXPRESION';
comment on column EC_VARIABLES.VAR_HELP is 'AYUDA';
comment on column EC_VARIABLES.VAR_CLASS is 'CLASE';
comment on column EC_VARIABLES.VAR_TYPE is 'TIPO';
comment on column EC_VARIABLES.VAR_PRECEDENCE is 'PRECEDENCIA';
comment on column EC_VARIABLES.VAR_ID is 'CONSECUTIVO';
comment on column EC_VARIABLES.VAR_LAST_VAL is 'ULTIMO VALOR';


