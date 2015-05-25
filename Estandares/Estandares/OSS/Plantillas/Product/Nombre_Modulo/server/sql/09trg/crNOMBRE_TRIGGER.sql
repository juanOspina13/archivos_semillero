CREATE OR REPLACE TRIGGER NOMBRE_TRIGGER BEFORE INSERT ON NOMBRE_TABLA
REFERENCING NEW AS NEW
FOR EACH ROW
/*****************************************************************
Propiedad intelectual de Open International Systems (c).

Unidad         : <Nombre Unidad>
Descripcion    : <Descripcion detallada de la funcionalidad>
Autor          : <Nombre y Apellido del Autor>
Fecha          : <DD-MM-YYYY>

Metodos

Nombre         :
Parametros         Descripcion
============	===================


Historia de Modificaciones
Fecha             Autor             Modificacion
=========   ========= ====================

******************************************************************/
DECLARE

    /********************************************
        DECLARACION DE VARIABLES
    ********************************************/
    /********************************************
        DECLARACION DE CURSORES
    ********************************************/
BEGIN

    -- LOGICA

EXCEPTION
    -- Manejo de Exepciones
    when LOGIN_DENIED or pkConstante.exERROR_LEVEL2 then
	pkErrors.GetErrorVar( nuErrCode, sbErrMsg );
	pkErrors.Pop;
	raise_application_error(pkConstante.nuERROR_LEVEL2, sbErrMsg);

    when others then
	pkErrors.NotifyError( pkErrors.fsbLastObject, sqlerrm, sbErrMsg );
	pkErrors.Pop;
	raise_application_error( pkConstante.nuERROR_LEVEL2, sbErrMsg );

END NOMBRE_TRIGGER;
/