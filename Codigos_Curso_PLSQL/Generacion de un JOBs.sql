-- 1. Creación de la tabla EjempJob
CREATE TABLE EjempJob
(
    EjJoCodi    number ( 15, 0 ),
    EjJoFech    date
);
/
-- 2. Creación de la secuencia
CREATE SEQUENCE seq_EjempJob_EjJoCodi_01
start with       1
increment by     1
maxvalue         9999999999999;
/
-- 3. Creación del procedimiento que inserta datos en la tabla
CREATE OR REPLACE PROCEDURE InsertInEjempJob
AS
BEGIN
    --Inserta los elementos en la tabla creada, por medio de la secuencia y capturando la fecha del sistema
    INSERT INTO EjempJob ( EjJoCodi, EjJoFech )
        VALUES ( seq_EjempJob_EjJoCodi_01.nextval, to_char ( sysdate, 'DD-MM-YYYY HH24:MI:SS' ) );

    commit;
END;
/
-- 4. Creación del JOB que se ejecuta cada minuto
DECLARE
    nuJob_Id        binary_integer;                                 -- Variable donde se almacenará el código del JOB
    sbIntervalo     varchar2  ( 100 ) := 'sysdate + (1/(24*60))';   -- Esta variable indica que el JOB se ejecutará cada minuto
BEGIN
    -- Crea el JOB enviandole los parámetros de Nombre de lo que quiere ejecutar, cuando ejecutarlo (Fecha o en este caso sysdate)
    -- y cada cuanto ejecutarlo, En esta ocación CADA MINUTO el sbIntervalo
    dbms_job.submit         ( nuJob_Id, 'InsertInEjempJob;', sysdate, sbIntervalo );
    
    -- Se implementa una salida por pantalla con el código del Job creado
    dbms_output.put_Line ( 'nuJob_Id: ' || nuJob_Id );

    --Captura y manejo de errores
    EXCEPTION
		when ex.CONTROLLED_ERROR then
			raise ex.CONTROLLED_ERROR;
		when others then
			Errors.setError;
			raise ex.CONTROLLED_ERROR;
END;