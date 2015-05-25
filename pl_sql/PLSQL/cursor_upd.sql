DECLARE
--declaro la excepcion
rc_subscriber cliente_juanm%rowtype;
VALOR_NEGATIVO EXCEPTION;
valor number;
CURSOR cususcriptores IS
    SELECT nombre
    FROM cliente_juanm
    FOR UPDATE;
    nombre  cliente_juanm.nombre%type;
    
BEGIN
--inicializo el valor y lanzo la excepcion si es necesario
valor := 15;
	IF valor >0 THEN
		RAISE VALOR_NEGATIVO;
	END IF;
 EXCEPTION WHEN VALOR_NEGATIVO THEN dbms_output.put_line('El valor debe ser negativo');

IF(cususcriptores%isOpen)then
    close cususcriptores;
END if;
--Excepcion valor_negativo
OPEN cususcriptores;
FETCH cususcriptores INTO nombre;
WHILE cususcriptores%found
    LOOP
        UPDATE cliente_juanm
        SET
        -- cedula='123145',
        campo_prueba=valor;
        FETCH cususcriptores INTO nombre;
    END loop;
    --EXCEPTION WHEN INVALID_NUMBER THEN DBMS_OUTPUT.put_line('la cedula no es valida');


CLOSE cususcriptores;
COMMIT;

END;

