CREATE OR REPLACE PACKAGE SE_BO_JO_InfoCotizaci IS

--------------------------------------------------------------------
        TYPE informacion IS RECORD                          -- declaracion del registro
        (
          nuNumCotizacion       JO_Cotizaci.coticodi%type,
          dtFechaCoti           JO_Cotizaci.cotifege%type,
          nuValorCoti           JO_Cotizaci.cotivalo%type,
          nuCodVend             JO_Cotizaci.cotiveco%type,
          nuValFac              JO_Factura.factvalo%type,
          dtFechaven            JO_Cotizaci.cotifeve%type,
          dtFechagf             JO_Factura.factfege%type,
          nuFactid              JO_Factura.factcodi%type
        );
        
            TYPE InfoCoti                                              -- declara la tabla PL
            IS TABLE OF  informacion
            INDEX BY BINARY_INTEGER;

            PROCEDURE JO_InfoCotizaci
            (   dtFchaIni      in   JO_Cotizaci.cotifege%type,
                dtFechaFin     in   JO_Cotizaci.cotifege%type,
                TbInfoCoti     out  InfoCoti

            );
            
-----------------------------------------------------------------------------------------------------
            TYPE InfoRepo                                              -- declara la tabla PL
            IS TABLE OF  JO_Repocoti.Recocons%type
            INDEX BY BINARY_INTEGER;

            PROCEDURE JO_InfoRepo
            (   dtFchaIni      in   JO_Cotizaci.cotifege%type,
                dtFechaFin     in   JO_Cotizaci.cotifege%type,
                TbInfoRepo     out  InfoRepo

            );
            
            
END SE_BO_JO_InfoCotizaci;
/

CREATE OR REPLACE PACKAGE BODY SE_BO_JO_InfoCotizaci IS
------------------------------------------------------------------------------------------------------
         PROCEDURE JO_InfoCotizaci
            (   dtFchaIni      in   JO_Cotizaci.cotifege%type,
                dtFechaFin     in   JO_Cotizaci.cotifege%type,
                TbInfoCoti     out  InfoCoti

            )IS

              CURSOR  cuJO_InfoCotizaci (
                                dtFchaIni         JO_Cotizaci.cotifege%type,
                                dtFechaFin        JO_Cotizaci.cotifege%type)
                IS
                SELECT coticodi, cotifege, cotivalo, cotiveco, sum(factvalo), cotifeve, factfege, factcodi
                FROM JO_Cotizaci, JO_Factura
                WHERE coticodi = faccotco
                AND cotifege between dtFchaIni AND dtFechaFin
                GROUP BY coticodi, cotifege, cotivalo, cotiveco, cotifeve, factfege, factcodi;


            BEGIN
                open cuJO_InfoCotizaci (dtFchaIni, dtFechaFin);
                fetch cuJO_InfoCotizaci BULK COLLECT INTO TbInfoCoti;
                Close cuJO_InfoCotizaci;

            EXCEPTION
            when LOGIN_DENIED then
                    Null;
            when others then
                    Null;

   END JO_InfoCotizaci;
-------------------------------------------------------------------------------------------------------------------

     PROCEDURE JO_InfoRepo
            (   dtFchaIni      in   JO_Cotizaci.cotifege%type,
                dtFechaFin     in   JO_Cotizaci.cotifege%type,
                TbInfoRepo     out  InfoRepo

            )
            IS
            
            TbInfoCoti InfoCoti;
            nuseqrepcot number;
            j number;
            i number;
            
            BEGIN

            SE_BO_JO_InfoCotizaci.JO_InfoCotizaci (dtFchaIni, dtFechaFin, TbInfoCoti);
            i:= 1;
            j:=1;

                LOOP
                   exit  when i>TbInfoCoti.count;

                   IF  TbInfoCoti(i).dtFechagf > TbInfoCoti(i).dtFechaven then
                       INSERT INTO JO_Incolog VALUES (sq_JO_Incolog_Inlocons.NEXTVAL , USER,SYS_CONTEXT('USERENV','OS_USER'),
                                                   SYSDATE, TbInfoCoti(i).nuNumCotizacion ,TbInfoCoti(i).nuFactid );
                   else
                        nuseqrepcot:=  sq_JO_Repocoti_Recocons.NEXTVAL;
                        INSERT INTO JO_Repocoti VALUES (nuseqrepcot ,TbInfoCoti(i).nuNumCotizacion,TbInfoCoti(i).dtFechaCoti,
                                                   TbInfoCoti(i).nuValorCoti, TbInfoCoti(i).nuValFac ,TbInfoCoti(i).nuCodVend );
                                                   
                      TbInfoRepo (j):= nuseqrepcot;
                      j:=j+1;
                   END if;
                   i := i + 1;

                END LOOP;

            EXCEPTION
            when LOGIN_DENIED then
                    Null;
            when others then
                    Null;

   END JO_InfoRepo;
------------------------------------------------------------------------------------------------------------------------
END SE_BO_JO_InfoCotizaci;


