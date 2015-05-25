-- Creación de la atbala
/
CREATE TABLE Rangos
(
    RangCodi    number      ( 15, 0 );
    RangNomb    varchar2    ( 100 );
    RangInic    number      ( 15, 2 );
    RangFina    number      ( 15, 2 );
);
/
-- Creación del Trigger a nivel de fila
/
CREATE OR REPLACE TRIGGER trgbirValiRangInser
BEFORE INSERT ON Rangos
FOR EACH ROW
DECLARE

    sbErrMsg        varchar2    ( 2000 );
    nuErrCode       number      ( 20, 0 );

BEGIN
--{
    pkErrors.Push ( 'trgbirValiRangInser' );

    BOInsertRangos.FillRanges
    (
        :new.RangCodi,
        :new.RangInic,
        :new.RangFina
    );

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
END trgbirValiRangInser;
/
/
-- Creación del Trigger a nivel de sentencia
/
CREATE OR REPLACE TRIGGER trgaiValiRangInser
AFTER INSERT ON Rangos

DECLARE

    sbErrMsg        varchar2    ( 2000 );
    nuErrCode       number      ( 20, 0 );

BEGIN
--{
    pkErrors.Push ( 'trgaiValiRangInser' );

    BOInsertRangos.ValidInsertRanges ( );

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
END trgaiValiRangInser;
/
-- Creación de la especificación del paquete BOInsertRangos
/
CREATE OR REPLACE PACKAGE BOInsertRangos AS
--{
    /****************************************************************************
    Propiedad intelectual de Open International Systems. (c).

    Package:        BOInsertRangos
    Descripción:    Paquete de componente de negocio (BC), que maneja todas las
                    validaciones de solapamiento de rangos de la tabla Rangos
    Autor:          <Nombre_Actor>.SAO######
    Fecha:          dd-mm-yyyy

    Historia de Modificaciones
    Fecha           Autor                                   Modificación
    ===========     =====================================   ====================
    dd-mm-yyyy      <Creador>.SAO######                     Creación
    *****************************************************************************/


    --------------------------------------------------------------------
    -- Constantes
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    -- Variables
    --------------------------------------------------------------------
    
    -- Variable de tipo tabla Rangos
    tytbRangosInsert  Rangos%rowtype;
    
    -- Tabla PL de la tabla Rangos
    TYPE tytbRanges IS TABLE OF Rangos%rowtype INDEX BY binary_integer;

    --------------------------------------------------------------------
    -- Cursores
    --------------------------------------------------------------------
    -----------------------------------
    -- Metodos publicos del package
    -----------------------------------

    /***************************************************************************
     Método:        fsbVersion
     Descripción:   Retorna la versión actual del paquete
    ***************************************************************************/
    FUNCTION fsbVersion
    return varchar2;

    /***************************************************************************
     Método:        FillRanges
     Descripción:   LLena la tabla de tipo Rangos para tener os valores para
                    validarlos posteriormente si no existe solapamiento de las
                    fechas y los rangos.
    ***************************************************************************/
    PROCEDURE FillRanges
    (
        inuRangCodi in Rangos.RangCodi%type,
        inuRangNomb in Rangos.RangNomb%type,
        inuRangInic in Rangos.RangInic%type,
        inuRangFina in Rangos.RangFina%type,
    );

    /***************************************************************************
     Método:        ValidInsertRanges
     Descripción:   Valida la insercción de los datos de Rangos, para que no
                    exista solapamiento entre las fechas y los rangos.
    ***************************************************************************/
    PROCEDURE ValidInsertRanges;
--}
END BOInsertRangos;
/
-- Creación del cuerpo del paquete BOInsertRangos
/
CREATE OR REPLACE PACKAGE BODY BOInsertRangos AS
--{
    /****************************************************************************
    Propiedad intelectual de Open International Systems. (c).

    Package:        BOInsertRangos
    Descripción:    Paquete de componente de negocio (BC), que maneja todas las
                    validaciones de solapamiento de rangos de la tabla Rangos
    Autor:          <Nombre_Actor>.SAO######
    Fecha:          dd-mm-yyyy

    Historia de Modificaciones
    Fecha           Autor                                   Modificación
    ===========     =====================================   ====================
    dd-mm-yyyy      <Creador>.SAO######                     Creación
    *****************************************************************************/

    -----------------------
    -- Constants
    -----------------------
    -- Constante con el SAO de la ultima version aplicada
    csbVERSION constant varchar2 ( 10 ) := 'SAO159680';

    /*********************************************************************************
    Propiedad intelectual de Open International Systems. (c).

    Método:         fsbVersion
    Descripción:    Función que retorna la versión del SAO que lo modifica
    Autor:          <Nombre_Actor>. SAO######
    Fecha:          dd-mm-yyyy

    Parametros      Descripcion
    =============   =================================================================
    NO APLICA       NO APLICA

    Retorno         Descrpción
    =============   =================================================================
    csbVersion      Version del Paquete

    Historia de Modificaciones
    Fecha           Autor                                   Modificacion
    ===========     =====================================   =========================
    dd-mm-yyyy      <Creador>.SAO######                     Creación
    **********************************************************************************/
    FUNCTION fsbVersion
    return varchar2
    IS
        sbErrMsg    varchar2    ( 2000 );
    BEGIN
    --{
        pkErrors.Push ( 'BOInsertRangos.fsbVersion' );

        pkErrors.Pop;

        -- Retorna el SAO con que se realizo la ultima entrega
        return ( csbVersion );
    EXCEPTION
        when LOGIN_DENIED then
        	pkErrors.Pop;
        	raise LOGIN_DENIED;
        when pkConstante.exERROR_LEVEL2 then
        	pkErrors.Pop;
        	raise pkConstante.exERROR_LEVEL2;
        when OTHERS then
        	pkErrors.NotifyError( pkErrors.fsbLastObject, sqlerrm, sbErrMsg );
        	pkErrors.Pop;
        	raise_application_error( pkConstante.nuERROR_LEVEL2, sbErrMsg );
    --}
    END fsbVersion;
    
    /*********************************************************************************
    Propiedad intelectual de Open International Systems. (c).

    Método:         FillRanges
    Descripción:    Procedimiento que llena la tabla PL de Rangos para ser validaciòn
                    despuès
    Autor:          <Nombre_Actor>. SAO######
    Fecha:          dd-mm-yyyy

    Parametros      Descripcion
    =============   =================================================================
    inuRangCodi     Còdigo del Rango
    inuRangNomb     Nombre del Rango
    inuRangInic     Rango inicial
    inuRangFina     Rango final

    Retorno         Descrpción
    =============   =================================================================
    NO APLICA       NO APLICA

    Historia de Modificaciones
    Fecha           Autor                                   Modificacion
    ===========     =====================================   =========================
    dd-mm-yyyy      <Creador>.SAO######                     Creación
    **********************************************************************************/
    PROCEDURE FillRanges
    (
        inuRangCodi in Rangos.RangCodi%type,
        inuRangNomb in Rangos.RangNomb%type,
        inuRangInic in Rangos.RangInic%type,
        inuRangFina in Rangos.RangFina%type
    )
    IS
        sbErrMsg    varchar2    ( 2000 );
    BEGIN
    --{
        pkErrors.Push ( 'BOInsertRangos.FillRanges' );

        tytbRangosInsert.RangCodi := inuRangCodi;
        tytbRangosInsert.RangNomb := inuRangNomb;
        tytbRangosInsert.RangInic := inuRangInic;
        tytbRangosInsert.RangFina := inuRangFina;

        pkErrors.Pop;

        EXCEPTION
            when LOGIN_DENIED then
        	   pkErrors.Pop;
        	   raise LOGIN_DENIED;
            when pkConstante.exERROR_LEVEL2 then
        	   pkErrors.Pop;
        	   raise pkConstante.exERROR_LEVEL2;
            when OTHERS then
        	   pkErrors.NotifyError( pkErrors.fsbLastObject, sqlerrm, sbErrMsg );
        	   pkErrors.Pop;
        	   raise_application_error( pkConstante.nuERROR_LEVEL2, sbErrMsg );
    --}
    END FillRanges;

    /*********************************************************************************
    Propiedad intelectual de Open International Systems. (c).

    Método:         ValidInsertRanges
    Descripción:    Procedimiento que valida la insercción de los datos para evitar
                    que existe solapamiento de rangos.
    Autor:          <Nombre_Actor>. SAO######
    Fecha:          dd-mm-yyyy

    Parametros      Descripcion
    =============   =================================================================
    NO APLICA       NO APLICA

    Retorno         Descrpción
    =============   =================================================================
    NO APLICA       NO APLICA

    Historia de Modificaciones
    Fecha           Autor                                   Modificacion
    ===========     =====================================   =========================
    dd-mm-yyyy      <Creador>.SAO######                     Creación
    **********************************************************************************/
    PROCEDURE ValidInsertRanges
    IS
        cnuNOT_RANGES   constant number := 1596841;
        sbErrMsg        varchar2    ( 2000 );
        styAllRanges    tytbRanges;
        stbRangos       Rangos%rowtype;
    BEGIN
    --{
        pkErrors.Push ( 'BOInsertRangos.ValidInsertRanges' );

        if ( tytbRangosInsert.RangInic >= tytbRangosInsert.RangFina ) then
            Errors.SetError ( cnuNOT_RANGES, 'El Rango Inicial Debe Ser Mayor Que El Rango Final' );
            raise ex.CONTROLLED_ERROR;
        end if;

        SELECT  *
        BULK    COLLECT INTO styAllRanges
        FROM    Rangos
        WHERE   RangCodi <> tytbRangosInsert.RangCodi;

        if ( styAllRanges.first is null ) then
            return;
        end if;

        for i in styAllRanges.first..styAllRanges.last loop

            stbRangos   :=  styAllRanges ( i );

            if ( stbRangos.RangInic = tytbRangosInsert.RangInic AND stbRangos.RangFina = tytbRangosInsert.RangFina ) then
                Errors.SetError ( cnuNOT_RANGES, 'Ya Existe Este Rango' );
                raise ex.CONTROLLED_ERROR;
            end if;

            if ( stbRangos.RangInic >= tytbRangosInsert.RangInic AND stbRangos.RangInic <= tytbRangosInsert.RangFina AND stbRangos.RangFeIn = tytbRangosInsert.RangFeIn AND stbRangos.RangFeFi = tytbRangosInsert.RangFeFi ) then
                Errors.SetError ( cnuNOT_RANGES, 'Hay Solapamiento de Rangos' );
                raise ex.CONTROLLED_ERROR;
            end if;

            if ( stbRangos.RangInic >= tytbRangosInsert.RangInic AND stbRangos.RangFina <= tytbRangosInsert.RangFina AND stbRangos.RangFeIn = tytbRangosInsert.RangFeIn AND stbRangos.RangFeFi = tytbRangosInsert.RangFeFi ) then
                Errors.SetError ( cnuNOT_RANGES, 'Hay Solapamiento de Rangos' );
                raise ex.CONTROLLED_ERROR;
            end if;

            if ( stbRangos.RangInic <= tytbRangosInsert.RangInic AND stbRangos.RangFina >= tytbRangosInsert.RangFina AND stbRangos.RangFeIn = tytbRangosInsert.RangFeIn AND stbRangos.RangFeFi = tytbRangosInsert.RangFeFi ) then
                Errors.SetError ( cnuNOT_RANGES, 'Hay Solapamiento de Rangos' );
                raise ex.CONTROLLED_ERROR;
            end if;
        end loop;

        pkErrors.Pop;

        EXCEPTION
            when LOGIN_DENIED then
        	   pkErrors.Pop;
        	   raise LOGIN_DENIED;
            when pkConstante.exERROR_LEVEL2 then
        	   pkErrors.Pop;
        	   raise pkConstante.exERROR_LEVEL2;
            when OTHERS then
        	   pkErrors.NotifyError( pkErrors.fsbLastObject, sqlerrm, sbErrMsg );
        	   pkErrors.Pop;
        	   raise_application_error( pkConstante.nuERROR_LEVEL2, sbErrMsg );
    --}
    END ValidInsertRanges;
--}
END BOInsertRangos;
/