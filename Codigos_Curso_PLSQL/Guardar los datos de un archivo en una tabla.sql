DECLARE
    --Esta variable es una tabla PL que almacenar� los datos a leer del archivo y guardarlos en la tabla pa�ses
    --que posee los datos de c�digo, nombre y continente
    TYPE tytbPaises IS TABLE OF Paises%rowtype INDEX BY binary_integer;

    stbMisPaises    tytbPaises              --Se instancia la tabla PL
    stbTablaPais    Paises%rowtype;         --Se crea una variable de tipo PL_Tabla para guardar los datos de cada fila en la tabla PL
    sbLine          varchar2 ( 4000 );      --Variable donde se guarda la lectura del archivo en cadena
    flFile          utl_file.file_type;     --Archivo para guardar los datos
    nuIndex         binary_integer;         --Indice de la posici�n de la tabla PL
BEGIN
    --Abre el archivo ejemplo.txt ubicado en /tmp en modo lectura(r), si no existe se arroja una excepci�n y termina la transacci�n
    flFile := utl_file.fopen ( '/tmp', 'ejemplo.txt', 'r');
    
    --Indice de la posici�n para guardar en la tabla PL
    nuIndex := 1;

    --Hace un recorrido del archivo extrallendo los datos y guardando los que se necesitan en la tabla PL
    loop
        --Manejo de un bloque an�nimo para salir del ciclo
        BEGIN
            utl_file.get_line ( flFile, sbLine );
            dbms_output.put_line ( sbLine );
            
            if sbLine = 'C�digo del pa�s:' then         --Si la liena es C�digo del pa�s:, se desprecia y sigue a obtener el c�digo
            
                utl_file.get_line ( flFile, sbLine );   --Se obtiene el c�digo
                stbTablaPais.PaisCodi := TO_NUMBER ( sbLine );
                
                utl_file.get_line ( flFile, sbLine );   --Se desprecia Nombre Del Pa�s:
                utl_file.get_line ( flFile, sbLine );   --Se obtiene el nombre
                stbTablaPais.PaisNomb := sbLine;
                
                utl_file.get_line ( flFile, sbLine );   --Se desprecia Continente Del Pa�s:
                utl_file.get_line ( flFile, sbLine );   --Se obtiene el continente
                stbTablaPais.PaisCont := sbLine;

                stbMisPaises ( nuIndex ) := stbTablaPais;
                nuIndex := nuIndex + 1;
                
            end if;
            
        --Captura y manejo de excepci�n que hace que se salga del ciclo
        EXCEPTION
            when NO_DATA_FOUND then
                exit;
        END;
    end loop;
    
    --Cierra el File
    utl_file.fclose ( flFile );

    --Recorrido que se hace para guardar los datos de la tabla PL en forma maciba en la tabla PaisAyud
    forall nuIndexFor in stbMisPaises.first..stbMisPaises.last
        INSERT INTO PaisAyud VALUES stbMisPaises ( nuIndexFor );
        
    --Generaci�n del Commit para guardar los cambios
    commit;

    --Captura y manejo de exepciones
    EXCEPTION
		when ex.CONTROLLED_ERROR then
			raise ex.CONTROLLED_ERROR;
		when others then
			Errors.setError;
			raise ex.CONTROLLED_ERROR;
END;