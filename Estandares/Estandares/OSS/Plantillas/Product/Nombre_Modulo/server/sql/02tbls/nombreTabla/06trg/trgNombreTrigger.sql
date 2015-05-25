CREATE OR REPLACE TRIGGER trg<[b][a]><[i][d][u]><[r]><NombreTabla><Accion>
BEFORE INSERT ON <NombreTabla>
REFERENCING OLD AS old NEW AS new
FOR EACH ROW
/**************************************************************
Propiedad intelectual de Open International Systems. (c).

Trigger	:  <Nombre del Trigger>

Descripcion	: Descripcion de las actividades realizadas por el
              trigger

Autor	: Nombre del desarrollador
Fecha	: DD-MM-YYYY

Historia de Modificaciones
Fecha	      IDEntrega           Modificación
DD-MM-YYYY    Autor<SAONNNN>      Descripcion de la Modificacion
**************************************************************/
DECLARE
    /******************************************
        Declaracion de variables y Constantes
    ******************************************/
    <Constante1> constant <TipoDato(##)> := <ValorInicializacion>;
    <Constante2> constant <TipoDato(##)> := <ValorInicializacion>;
            .
            .
            .
    <ConstanteN> constant <TipoDato(##)> := <ValorInicializacion>;


    <Variable1> constant <TipoDato(##)> [:= <ValorInicializacion>];
    <Variable2> constant <TipoDato(##)> [:= <ValorInicializacion>];
            .
            .
            .
    <VariableN> constant <TipoDato(##)> [:= <ValorInicializacion>];
BEGIN
--{
    -- Logica del Negocio
--}
EXCEPTION
    when ex.CONTROLLED_ERROR then
        raise ex.CONTROLLED_ERROR;
    when others then
        Errors.setError;
        raise ex.CONTROLLED_ERROR;
END trgbirGE_ENTITY ;
/