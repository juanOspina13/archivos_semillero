
/*
    Propiedad intelectual de Open International Systems. (c).

    Programa    : nombreproc

    Descripcion : Descripcion

    Parametros  :       Descripcion
        0-      Nombre del programa a ejecutar 
        1-      Usuario/Password@String_Conexion
        2-      Campo
        N-      Campo N

    Retorno     :

    Autor       : <Nombre Apellido del Autor>
    Fecha       : <DD-MM-YYYY>

    Historia de Modificaciones
    Fecha          IDEntrega

    DD-MM-YYYY    <Autor>SAONNNNN
    Modificacion
*/

#include <stdio.h>
#include <fact.h>
#define cnuPARAMETERS_NUMBER       #

EXEC SQL INCLUDE oraca;
EXEC SQL INCLUDE sqlca;
extern int stSqlErr, (*pfnProgramErr)();

int     atoi();
long    atol();

main (argc, argv)
int argc;
char *argv[];
{

    EXEC SQL WHENEVER SQLERROR do PrintError("main");

    printf("ValArgumentsNumber\n");

    /* Valida numeros de parametros de entrada */
    ValArgumentsNumber( argc );

    printf("ConnectToOracle\n");

    /* Conexion a oracle */
    ConnectToOracle( argv[1] );

    printf("PrintInitMessage\n");

    /* Imprime mensaje inicial */
    PrintInitMessage( argv );

    printf ( "Process\n" );

    /* Procesa */
    Process ( argv );

}

ValArgumentsNumber ( argc )
int argc;
{
    if ( argc != cnuPARAMETERS_NUMBER )
    {
        printf("\n<<----- ( Open International Systems ) ----->>\n");
        printf ("\nFalta pasar todos los parametros necesarios para ejecutar el programa.\n");
        printf ("Para ejecutar correctamente digite la instruccion asi:\n");
        printf ("nombreproc <Usuario/Password@TNS_IDX> <campo>...<campo N>\n");
        printf("\n<<----- ( Open International Systems ) ----->>\n");
        exit (1);
    }
}

ConnectToOracle ( isbUser )
char isbUser[];
{
    EXEC SQL begin declare section;
        varchar    sbUserDB[100];
    EXEC SQL end declare section;

    EXEC SQL WHENEVER SQLERROR do PrintError("ConnectToOracle");

    CPYVCH2 (sbUserDB, 0, isbUser, 0);

    /* Se conecta a la Base de Datos */

    EXEC SQL connect :sbUserDB;
}


PrintInitMessage( argv )
char *argv[];
{
    EXEC SQL begin declare section;
        varchar     vcUsuario[100];     /* Usuario */
    EXEC SQL end declare section;

    EXEC SQL WHENEVER SQLERROR do PrintError("PrintInitMessage");

    /* Obtiene datos de entrada */

    INIVCH2 (vcUsuario);

    CPYVCH2 (vcUsuario, 0, argv[1], 0);

    /* Imprime parametros de entrada para el proceso de impresion */

    printf("\n%s","<<----- ( Open International Systems ) ----->>\n");
    printf("\nCampo         : %s", campo.arr);
    printf("\n<<------------------------------------------>>\n");

}

Process ( argv )
char *argv[];
{

    EXEC SQL begin declare section;
        varchar    vcErrorMessage[2000];        /* Mensaje de Error del API */
        long       lgErrorCode;                 /* Codigo de Error del API */
    EXEC SQL end declare section;

    EXEC SQL WHENEVER SQLERROR do PrintError("Process");

    INIVCH2 (vcErrorMessage);

    BEGINEXEC

        pkErrors.Push ( 'NOMBREPROC.Process' );

        -- Setea la aplicacion
        pkErrors.SetApplication ( 'NOMBREPROC' );

        -- Indica que se esta ejecutando desde el server
        pkErrors.SetServerMode;

        -- Ejecuta proceso
        pkNombreApi.RunProcess
            (
                :vcCampo1,
                :vcCampoN,
                :lgErrorCode,
                :vcErrorMessage
            );

        -- Evalua si presento error
        if ( :lgErrorCode <> 0 ) then
        --{
            pkErrors.Pop ;
            rollback ;
            raise LOGIN_DENIED ;
        --}
        end if ;

        commit ;

        pkErrors.Pop ;

    ENDEXEC

    NULLVCH2( vcErrorMessage );

    printf ("\nProceso Termino \n\n");

}
