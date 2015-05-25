CREATE OR REPLACE PROCEDURE NombreProcedimiento
(
    IOVar1    in    definicion
    IOVar2    in    definicion
    IOVarN    in    definicion
)
IS

/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Funcion     Nombre del procedimiento (El nombre debe ser en ingles)
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    <Breve descripcion de lo que hace el procedimiento>
  Parametros  :  IOVar1      Descripcion 1
                 IOVar2      Descripcion 1
                 IOVar3      Descripcion 2
                 IOVarN      Descripcion N

  Retorno     :

  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

    -- Variable para mensajes de Error
    sbErrMsg    ge_error_log.description%type;

BEGIN
--{

    pkErrors.Push ('NombreProcedimiento');

    -- Proceso

    pkErrors.Pop;

EXCEPTION
    when LOGIN_DENIED then
        pkErrors.Pop;
        raise LOGIN_DENIED;

    when pkConstante.exERROR_LEVEL2 then
        -- Error Oracle nivel dos
        pkErrors.Pop;
        raise pkConstante.exERROR_LEVEL2;

    when OTHERS then
        pkErrors.NotifyError(pkErrors.fsbLastObject, sqlerrm, sbErrMsg);
        pkErrors.Pop;
        raise_application_error(pkConstante.nuERROR_LEVEL2,sbErrMsg);

--}
END NombreProcedimiento;
/