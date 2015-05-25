CREATE OR REPLACE TRIGGER <NombreTriggerIngles> <Momento> <Evento> ON <NombreObjeto>
REFERENCING ...
WHEN ( ... )

/****************************************************************************
    Propiedad intelectual de Open International Systems. (c).

    Trigger     : NombreTrigger (Debe identificar la accion y debe ser en ingles)

    Descripcion : Descripcion

    Parametros  :       Descripcion

    Retorno     :

    Autor       : <Nombre Apellido del Autor>
    Fecha       : <DD-MM-YYYY>

    Historia de Modificaciones
    Fecha          IDEntrega

    DD-MM-YYYY    <Autor>SAONNNNN
    Modificacion
****************************************************************************/

DECLARE

    sbErrMsg            errorlog.erlomens%type;

BEGIN
--{
    pkErrors.Push('NombreTrigger');

    -- Proceso

    pkErrors.Pop;

EXCEPTION
    when LOGIN_DENIED or pkConstante.exERROR_LEVEL2 then
        pkErrors.GetErrorVar( nuErrCode, sbErrMsg );
        pkErrors.Pop;
        raise_application_error(pkConstante.nuERROR_LEVEL2, sbErrMsg);

    when others then
        pkErrors.NotifyError( pkErrors.fsbLastObject, sqlerrm, sbErrMsg );
        pkErrors.Pop;
        raise_application_error( pkConstante.nuERROR_LEVEL2, sbErrMsg );
--}
End;
/
