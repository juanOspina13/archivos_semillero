DECLARE
    nuError             numbver;
    sbError             varchar2 ( 2000 );
    nuTotalHilo         number := 4;                        -- Cantidad de hilos a ejecutar
    nuHilo              number := 2;                        -- C�digo del hilo
    nuLastRecord        number;                             -- �ltimo c�digo de la tabla procesado
    
    TYPE tySuscriptor   IS TABLE OF servsusc%rowtype;
    
    rctySuscriptor      tySuscriptor;
    
     CuSuscriptores                                   -- Se define el CURSOR con el �ltimo C�digo registrado
    (
        inuLastRecord       number
    )
        IS
    SELECT /*+ index_asc(servsusc pk_servsusc)*/ *          -- Se hace selecci�n Con un Pibote �nico y se genera con un �ndice
      FROM servsusc
     WHERE sesunuse > inuLastRecord                         -- Condici�n para que procese despu�s del �ltimo c�digo procesado
       AND mod ( sesunuse, nuTotalHilo ) + 1 = nuHilo;      -- Para que cada hilo procese datos diferentes
BEGIN
    nuLastRecord := -1;
    
    loop
        open    CuSuscriptores ( nuLastRecord );
        fetch   CuSuscriptores bulk collect into rctySuscriptor limit 100;  -- L�mite de precesamiento masivo por cada loop.
        close   CuSuscriptores;

        exit when rctySuscriptor.first is null;                             -- Condici�n de salida para el ciclo

        if ( rctySuscriptor is not null ) then
            for indx in rctySuscriptor.first..rctySuscriptor.last loop
                null;
            end loop;
            
            nuLastRecord := rctySuscriptor ( rctySuscriptor.last ).sesunuse;
        end if;
    end loop;
    
    EXCEPTION                                                -- Manejo de Excepciones
        when ex.CONTROLLED_ERROR then
            raise ex.CONTROLLED_ERROR;
        when others then
            Errors.setError;
            raise ex.CONTROLLED_ERROR;
END;