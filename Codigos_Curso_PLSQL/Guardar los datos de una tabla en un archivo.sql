DECLARE
    --Esta variable es una tabla PL que almacenar� los datos a leer y guardar al archivo de la tabla Paises
    --Que posee los datos del c�digo del pa�s, el nombre y el c�digo al que pertenece
    TYPE tyPaises IS TABLE OF Paises%rowtype INDEX BY binary_integer;

    tvMisPaises     tyPaises;                   -- Se instancia la tabla PL
    flFile          utl_file.file_type;         -- Archivo para guardar los datos
    crTablaPais     Paises%rowtype;             -- Se crea una variable de tipo Tabla para guardar los datos de cada fila en la tabla PL
BEGIN
    -- La consulta que llena la tabla PL
    SELECT *
    BULK COLLECT INTO tvMisPaises
    FROM PL_Paises;

    -- Abre el archivo ejemplo.txt ubicado en /tmp en modo escritura(w), si no existe Oracle lo crea por defecto
    flFile := utl_file.fopen ( '/tmp', 'ejemplo.txt', 'w');

    --Llana una cabecera con informaci�n
    utl_file.put_line ( flFile, 'Guardar Un Archivo De Una Tabla' );
    utl_file.put_line ( flFile, 'La Tabla Es "Paises"' );
    utl_file.new_line ( flFile, 1 );

    --Hace un recorrido de la tabla PL sacando los valores y escribiendolos en el archivo
    for nuRecorrido in tvMisPaises.first .. tvMisPaises.last loop
    
        crTablaPais := tvMisPaises ( nuRecorrido );
        utl_file.put ( flFile, 'C�digo del pa�s:' );
        utl_file.new_line ( flFile, 1 );
        utl_file.put ( flFile,crTablaPais.PaisCodi );
        utl_file.new_line ( flFile, 1 );
        utl_file.put ( flFile, 'Nombre Del Pa�s:' );
        utl_file.new_line ( flFile, 1 );
        utl_file.put ( flFile, crTablaPais.PaisNomb );
        utl_file.new_line ( flFile, 1 );
        utl_file.put ( flFile, 'Continente Del Pa�s:' );
        utl_file.new_line ( flFile, 1 );
        utl_file.put ( flFile, crTablaPais.PaisCont );
        utl_file.new_line ( flFile, 2 );
        
    end loop;
    
    -- Cierra el archivo
    utl_file.fclose ( flFile );

    --Captura y manejo de exepciones
    EXCEPTION
		when ex.CONTROLLED_ERROR then
			raise ex.CONTROLLED_ERROR;
		when others then
			Errors.setError;
			raise ex.CONTROLLED_ERROR;
END;