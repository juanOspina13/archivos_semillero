CREATE OR REPLACE PACKAGE JO_BO_REPOCOTI
IS
    TYPE tyrcRepocoti IS RECORD (
        rcRepocoti  JO_Repocoti%rowtype,
        nuPorcEfec  NUMBER(15, 2),
        sbNombVend  JO_Vendedor.vendnomb%type);

    TYPE tytbRepocoti IS TABLE OF tyrcRepocoti INDEX BY BINARY_INTEGER;

    PROCEDURE BO_REPOCOTI_JO
        (
            idtFechaIni      in   JO_Cotizaci.cotifege%type,
            idtFechaFin      in   JO_Cotizaci.cotifege%type,
            otbplRepocoti    out tytbRepocoti
        );

    PROCEDURE BO_ORDEN_JO
        (
            idtFechaIni      in     JO_Cotizaci.cotifege%type,
            idtFechaFin      in     JO_Cotizaci.cotifege%type,
            otbpl_orden    out tytbRepocoti
        );
    PROCEDURE BO_REPORT_JO
    (
        idtFechaIni      in     JO_Cotizaci.cotifege%type,
        idtFechaFin      in     JO_Cotizaci.cotifege%type

    );
    PROCEDURE BO_UTL_READ;

END JO_BO_REPOCOTI;
/
CREATE OR REPLACE PACKAGE BODY JO_BO_REPOCOTI
IS
    PROCEDURE BO_REPOCOTI_JO
        (
            idtFechaIni      in     JO_Cotizaci.cotifege%type,
            idtFechaFin      in     JO_Cotizaci.cotifege%type,
            otbplRepocoti    out    tytbRepocoti
        )
        IS
        tbplInfoRepo    SE_BO_JO_InfoCotizaci.InfoRepo;
        rcRepocoti      JO_Repocoti%rowtype;
        rcVendedor      JO_VENDEDOR%rowtype;
        BEGIN
            SE_BO_JO_InfoCotizaci.JO_InfoRepo(idtFechaIni, idtFechaFin, tbplInfoRepo);
            FOR i IN tbplInfoRepo.FIRST..tbplInfoRepo.LAST
            LOOP
                JO_DAO_REPOCOTI.DAO_REPOCOTI_JO(tbplInfoRepo(i), rcRepocoti);
                otbplRepocoti(i).rcRepocoti := rcRepocoti;
                JO_DAO_VENDEDOR.DAO_VENDEDOR_JO(rcRepocoti.recoveco, rcVendedor);
                otbplRepocoti(i).sbNombVend := rcVendedor.vendnomb;
                otbplRepocoti(i).nuPorcEfec := (rcRepocoti.recovave / rcRepocoti.recovaco) * 100;
            END LOOP;

    END BO_REPOCOTI_JO;

    PROCEDURE BO_ORDEN_JO
        (
            idtFechaIni      in     JO_Cotizaci.cotifege%type,
            idtFechaFin      in     JO_Cotizaci.cotifege%type,
           otbpl_orden    out    tytbRepocoti
        )
        IS
        temp tyrcRepocoti;
        BEGIN
            BO_REPOCOTI_JO(idtFechaIni, idtFechaFin, otbpl_orden);

            FOR i IN otbpl_orden.FIRST..otbpl_orden.LAST
            LOOP
                IF otbpl_orden.EXISTS(i) THEN
                    FOR j IN otbpl_orden.FIRST..otbpl_orden.LAST-i
                        LOOP
                            IF otbpl_orden.EXISTS(j) THEN
                                IF  otbpl_orden(j).nuPorcEfec<otbpl_orden(j+1).nuPorcEfec THEN
                                temp:=otbpl_orden(j);
                                otbpl_orden(j):=otbpl_orden(j+1);
                                otbpl_orden(j+1):=temp;
                                END IF;
                            END IF;
                        END LOOP;
                END IF;
            END LOOP;



    END BO_ORDEN_JO;

    PROCEDURE BO_REPORT_JO
        (
            idtFechaIni      in     JO_Cotizaci.cotifege%type,
            idtFechaFin      in     JO_Cotizaci.cotifege%type
        )
        IS
        flFile utl_file.file_type;
        itbreporte    tytbRepocoti;
        BEGIN

        BO_ORDEN_JO(idtFechaIni, idtFechaFin,itbreporte);
        dbms_output.put_Line('oasa');
        dbms_output.put_Line('oasa'||itbreporte(1).sbnombvend);



        flFile := utl_file.fopen('/tmp/hbossa','JO_TFinal.txt','w');

        FOR I IN itbreporte.FIRST..itbreporte.LAST
        loop
            utl_file.new_line(flFile,1);
            utl_file.put(flFile,RPAD(itbreporte(I).rcRepocoti.recocons,12,' '));
            utl_file.put(flFile,LPAD(itbreporte(I).rcRepocoti.recorepo,12,' '));
            utl_file.put(flFile,RPAD(' '||itbreporte(I).rcRepocoti.recpfecl,10,' '));
            utl_file.put(flFile,LPAD(itbreporte(I).rcRepocoti.recovaco,17,' '));
            utl_file.put(flFile,LPAD(itbreporte(I).rcRepocoti.recovave,17,' '));
            utl_file.put(flFile,LPAD(itbreporte(I).rcRepocoti.recoveco,7,' '));
            utl_file.put(flFile,LPAD(itbreporte(I).nuPorcEfec,20,' '));
            utl_file.put(flFile,RPAD('  '||itbreporte(I).sbNombVend,210,' '));
        END loop;

        utl_file.new_line(flFile,1);
        utl_file.put(flFile,'FIN');
        utl_file.fclose(flFile);




        EXCEPTION
        when login_denied then
            null;
        when others then
            null;


    END BO_REPORT_JO;

    PROCEDURE BO_UTL_READ IS
        sbLine VARCHAR2(4000);
        flFile utl_file.file_type;
        itbreporte    tytbRepocoti;
        BEGIN
        flFile := utl_file.fopen('/tmp/hbossa','JO_TFinal.txt','r');
        LOOP
            utl_file.get_line(flFile, sbLine);
            exit when sbLine ='FIN';

            DBMS_output.put_line(
                                    SUBSTR(sbLine,0,12)||' '||
                                    SUBSTR(sbLine,13,25)||' '||
                                    SUBSTR(sbLine,26,36)||' '||
                                    SUBSTR(sbLine,37,54)||' '||
                                    SUBSTR(sbLine,55,72)||' '||
                                    SUBSTR(sbLine,73,80)||' '||
                                    SUBSTR(sbLine,81,101)||' '||
                                    SUBSTR(sbLine,102,150)
                                );

        END LOOP;
        utl_file.fclose(flFile);

        EXCEPTION
        WHEN utl_file.INVALID_PATH THEN
            DBMS_OUTPUT.PUT_LINE('Path Invalido ');
        WHEN utl_file.INVALID_MODE THEN
            DBMS_OUTPUT.PUT_LINE('Modo Invalido ');
       WHEN utl_file.INVALID_OPERATION THEN
            DBMS_OUTPUT.PUT_LINE('Operación Invalida ');
             DBMS_OUTPUT.PUT_LINE('error: '||sqlcode);
            DBMS_OUTPUT.PUT_LINE('error: '||sqlerrm);
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error Others ');
            DBMS_OUTPUT.PUT_LINE('error: '||sqlcode);
            DBMS_OUTPUT.PUT_LINE('error: '||sqlerrm);

    END BO_UTL_READ;

END JO_BO_REPOCOTI;
/