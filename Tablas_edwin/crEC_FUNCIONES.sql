--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crEC_FUNCIONES.sql
-- Autor         : Edwin Sebastian Calderon Gomez ( ecalderon )
-- Fecha         : 06-04-2015 17:26:11 ( Fecha creación )
--
-- Descripción   : Creación de la tabla EC_FUNCIONES
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 06-04-2015    ecalderon.SAO305895
-- Modificación
--

PROMPT - Script  :  crEC_FUNCIONES.sql
PROMPT - Author  :  Edwin Sebastian Calderon Gomez
PROMPT
PROMPT - Creating table EC_FUNCIONES

CREATE TABLE EC_FUNCIONES
(
     FUNCTION_ VARCHAR2( 64 )     CONSTRAINT NN_EC_FUNCIONES_338737 NOT NULL,
     CONTENT VARCHAR2( 2048 )     CONSTRAINT NN_EC_FUNCIONES_338738 NOT NULL,
     SYNTAX VARCHAR2( 255 )     CONSTRAINT NN_EC_FUNCIONES_338739 NOT NULL,
     HELP VARCHAR2( 255 )     CONSTRAINT NN_EC_FUNCIONES_338740 NOT NULL,
     FUNNCION_ID NUMBER( 10 )     CONSTRAINT NN_EC_FUNCIONES_338741 NOT NULL)
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

PROMPT ... Adding Comments to table [EC_FUNCIONES]...
comment on table EC_FUNCIONES is 'FUNCIONES';

PROMPT ... Adding Comments to columns of table  [EC_FUNCIONES]...
comment on column EC_FUNCIONES.FUNCTION_ is 'FUNCION';
comment on column EC_FUNCIONES.CONTENT is 'CATEGORIA';
comment on column EC_FUNCIONES.SYNTAX is 'SINTAXIS';
comment on column EC_FUNCIONES.HELP is 'AYUDA';
comment on column EC_FUNCIONES.FUNNCION_ID is 'CONSECUTIVO DE FUNCION';


