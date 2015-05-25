--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : Bloque Anónio.sql
-- Autor         : JJuan ospina
-- Fecha         : <01-Marzo-2015> ( Fecha creación )
--
-- Descripción   : Bloque anóninmo que hace el llamado al paquete SE_BO_JO_InfoCotizaci.pkg
--
--Métodos

--Nombre         :
--Parámetros         Descripción
--============	===================


--Historia de Modificaciones
--Fecha             Autor             Modificación
--=========         =========         ====================

--******************************************************************/
DECLARE
      TbInfoRepo     SE_BO_JO_InfoCotizaci.InfoRepo;
      dtFchaIni      JO_Cotizaci.cotifege%type;
      dtFechaFin     JO_Cotizaci.cotifege%type;
       i             number;

BEGIN
    dtFchaIni := TO_DATE('13/05/2014 00:00:00', 'DD/MM/YYYY HH24:MI:SS');
    dtFechaFin  := TO_DATE('14/07/2016 00:00:00', 'DD/MM/YYYY HH24:MI:SS');
    SE_BO_JO_InfoCotizaci.JO_InfoRepo (dtFchaIni, dtFechaFin, TbInfoRepo);
    
    i:= 1;

    LOOP
            exit  when i>TbInfoRepo.count;
            dbms_output.put_Line(TbInfoRepo(i));
       i := i + 1;
       
    END LOOP;

END;
/
CREATE SEQUENCE sq_JO_Repocoti_Recocons
    increment BY 1 start
    with 1
    maxvalue 9999999999
    Nocycle;


/
CREATE SEQUENCE sq_JO_Incolog_Inlocons
    increment BY 1 start
    with 1
    maxvalue 9999999999
    Nocycle;

-- CREACION DE INDICES TABLAS JO_FACTURA Y JO_COTIZACI
/*/
create index ix_JO_COTIZACI01 on JO_COTIZACI(COTIFEGE) --CREACION DEL INDICE
/
create index ix_JO_FACTURA01 on JO_FACTURA(faccotco) --CREACION DEL INDICE   */
       