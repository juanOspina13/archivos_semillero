
DECLARE
    tabla_pl  SE_BO_tablas_pl_jmo.Record_suscriptores ;
    sbLine varchar2(4000);
    flFile utl_file.file_type;

BEGIN

SE_BO_tablas_pl_jmo.PO_traer_info(2,tabla_pl);
flFile := utl_file.fopen('/tmp/hbossa/','Archivo_pruebaJmo.txt','w');
utl_file.put_line(flFile,'Plano suscriptores');
for i in tabla_pl.first..tabla_pl.last                  --muestro con un for el contenido del arreglo
    loop
        if tabla_pl.exists(i) then
            utl_file.put_line(flFile,substr(TRIM(tabla_pl(i).subscriber_name),30)
                        ||substr(TRIM(tabla_pl(i).subs_last_name),10)
                        ||substr(TRIM(tabla_pl(i).address),10)
                        ||substr(TRIM(tabla_pl(i).phone),10));
            dbms_output.put_line(substr(TRIM(tabla_pl(i).subscriber_name),30)||substr(TRIM(tabla_pl(i).subs_last_name),10)||substr(TRIM(tabla_pl(i).address),10)||substr(TRIM(tabla_pl(i).phone),10));
        END if;
    END loop;

    EXCEPTION
    when utl_file.INVALID_PATH Then
        dbms_output.put_line('Path invalido ');
    when utl_file.INVALID_MODE Then
        dbms_output.put_line('Modo invalido ');
    when utl_file.INVALID_OPERATION Then
        dbms_output.put_line('Operacion invalida ');
    when OTHERS then
        dbms_output.put_line('error others');
        dbms_output.put_line('error'||sqlcode);
        dbms_output.put_line('error'||sqlerrm);

utl_file.fclose(flFile);
END;


