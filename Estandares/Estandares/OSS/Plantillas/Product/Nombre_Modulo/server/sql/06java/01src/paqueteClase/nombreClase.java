/*************************************************************************************** 
 * @(#)<Nombre de la Clase>
 *
 *
 * This software is provided "AS IS," without a warranty of any kind.
 * ALL EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES,
 * INCLUDING ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE OR NON-INFRINGEMENT, ARE HEREBY EXCLUDED. SUN AND
 * ITS LICENSORS SHALL NOT BE LIABLE FOR ANY DAMAGES SUFFERED BY
 * LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING THE
 * SOFTWARE OR ITS DERIVATIVES. IN NO EVENT WILL OPEN SYSTEMS OR ITS LICENSORS
 * BE LIABLE FOR ANY LOST REVENUE, PROFIT OR DATA, OR FOR DIRECT,
 * INDIRECT, SPECIAL, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES,
 * HOWEVER CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, ARISING
 * OUT OF THE USE OF OR INABILITY TO USE SOFTWARE, EVEN IF OPEN SYSTEMS HAS BEEN
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
 *
 *
 * Propiedad intelectual de Open International Systems (c).
 *
 * Unidad         : <Nombre de la CLASE>
 * Descripcion    : <Descripcion Detallada de las actividades realizadas
 * 	    	     por la CLASE>
 * Autor          : <Nombre del Desarrollador que creo la CLASE>
 * Fecha          : DD-MM-YYYY
 *
 *
 * Historia de Modificaciones
 * Fecha        Autor              Modificacion
 * =========    =========          ====================
 * DD-MM-YYYY   Autor<SAONNNNN>    Breve descripcion de la modificacion que se
 *                                 se esta realizando al paquete
 *
 ****************************************************************************************/

/*************************************************
 * Nombre del paquete al cual hace parte la CLASE
 *************************************************/
package <NombrePaquete>;

/****************************************
 * Declaraciones requeridas por la CLASE
 ****************************************/
import <Declaracion1>;
import <Declaracion2>;
   .
   .
   .
import <DeclaracionN>;

<Modificador de Acceso> class <NombreCLASE> [extends <ClasePadre>] [implements <InterfaceImplementada>]{

    /****************************************************
     * Declaracion de Atributos (Variables) de la CLASE
     ****************************************************/
     <Modificador de Acceso> <TipoDato> Variable1 [= Valor inicial];
     <Modificador de Acceso> <TipoDato> Variable2 [= Valor inicial];
             	     .
		     .
		     .
     <Modificador de Acceso> <TipoDato> VariableN [= Valor inicial];

     
    /****************************************************
     * Declaracion de Atributos (Constantes) de la CLASE
     ****************************************************/
     final <TipoDato> Constante1 = ValorInicial;
     final <TipoDato> Constante2 = ValorInicial;
                        .
			.
			.
     final <TipoDato> ConstanteN = ValorInicial;

			
    /**************************************************
     * Implementacion de los Constructores de la clase
     **************************************************/


    /**************************************************************
        Propiedad intelectual de Open International Systems (c).
        Unidad      :  Nombre del Constructor de la CLASE
        Descripcion :  Breve descripcion de lo que hace el CONSTRUCTOR

        Autor       :  <Nombre del desarrollador que creo el CONSTRUCTOR>
        Fecha       :  DD-MM-YYYY

        Historia de Modificaciones
        Fecha        Autor              Modificacion
        =========    =========          ====================
        DD-MM-YYYY   Autor<SAONNNN>     Descripcion de la modificacion
    ***************************************************************/
     <Modificador del Constructor> <NombreCLASE>(){
	     // Logica
     }
			

    /**************************************************************
        Propiedad intelectual de Open International Systems (c).
        Unidad      :  Nombre del Constructor de la CLASE
        Descripcion :  Breve descripcion de lo que hace el CONSTRUCTOR

        Autor       :  <Nombre del desarrollador que creo el CONSTRUCTOR>
        Fecha       :  DD-MM-YYYY
        Parametros  :  <Listado de parametros que recibe el procedimiento y
                        breve descripcion de que es>

                       parametro1       <Descripcion del parametro>
                       parametro2       <Descripcion del parametro>
                          .
                          .
                          .
                       parametroN       <Descripcion del parametro>

        Historia de Modificaciones
        Fecha        Autor              Modificacion
        =========    =========          ====================
        DD-MM-YYYY   Autor<SAONNNN>     Descripcion de la modificacion
    ***************************************************************/
     <Modificador del Constructor> <NombreCLASE>(Parametro1, Parametro2, ..., ParametroN){
	     // Logica
     }


     
    /**************************************************
     * Implementacion de los METODOS de la clase
     **************************************************/


    /**************************************************************
        Propiedad intelectual de Open International Systems (c).
        Unidad      :  Nombre del METODO de la CLASE
        Descripcion :  Breve descripcion de lo que hace el METODO

        Autor       :  <Nombre del desarrollador que creo el procedimiento>
        Fecha       :  DD-MM-YYYY

        Historia de Modificaciones
        Fecha        Autor              Modificacion
        =========    =========          ====================
        DD-MM-YYYY   Autor<SAONNNN>     Descripcion de la modificacion
    ***************************************************************/
    <Modificador del METODO> [Tipo] <TipoDato> <NombreMetodo>(){
	    // Logica del Negocio
    }


    
    /**************************************************************
        Propiedad intelectual de Open International Systems (c).
        Unidad      :  Nombre del METODO de la CLASE
        Descripcion :  Breve descripcion de lo que hace el METODO

        Autor       :  <Nombre del desarrollador que creo el procedimiento>
        Fecha       :  DD-MM-YYYY
        Parametros  :  <Listado de parametros que recibe el procedimiento y
                        breve descripcion de que es>

                       parametro1       <Descripcion del parametro>
                       parametro2       <Descripcion del parametro>
                          .
                          .
                          .
                       parametroN       <Descripcion del parametro>

        Historia de Modificaciones
        Fecha        Autor              Modificacion
        =========    =========          ====================
        DD-MM-YYYY   Autor<SAONNNN>     Descripcion de la modificacion
    ***************************************************************/
     <Modificador del METODO> [Tipo] <TipoDato> <NombreMetodo>(Parametro1, Parametro2, ..., ParametroN){
	     // Logica del Negocio
     }
}
