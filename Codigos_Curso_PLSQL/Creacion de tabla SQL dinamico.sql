declare
    nuId        integer;
    sbTabla     varchar2 ( 100 );
    sbcampos    varchar2 ( 100 );
BEGIN
    sbTabla     := 'tmp_prueba ';                                       -- Se crea la tabla con el nombre
    sbcampos    := '( ID number ( 4 ), DESCRIPTION varchar2 ( 100 ) )'; -- Los campos
    nuId        := dbms_sql.open_cursor;                                -- Se abre el curso

    dbms_sql.parse
    (                                                                   -- Se mana el Id del cursor
        nuID,                                                           -- La comando a ejecutar
        'CREATE TABLE ' || sbTabla || sbCampos,                         -- El modo nativo es el más genérico soporta todo
        dbms_sql.native
    );                                                                  -- Se valida la tabla Parseandola y se ejecuta

    dbms_sql.close_cursor ( nuId );
                                         -- Se cierra el CURSOR
    --Captura y manejo de errores
    EXCEPTION
		when ex.CONTROLLED_ERROR then
			raise ex.CONTROLLED_ERROR;
		when others then
			Errors.setError;
			raise ex.CONTROLLED_ERROR;
END;