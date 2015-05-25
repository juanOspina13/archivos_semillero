{*******************************************************************}
{                                                                   }
{   Propiedad intelectual de Open Systems (c).                      }
{   Unit   <Nombre de la unidad de Codigo>			    }
{   Descripción :                                                   }
{   Autor  : <Nombre del usuario creador de la UNIDAD>		    }
{   Fecha  : <DD-MM-YYYY>					    }
{   Historia de modificaciones                                      }
{   Fecha       Autor                Modificacion		    }
{   DD-MM-YYYY  Autor<SAONNNN>       <Breve descripcion de la	    }
{                                     modificacion realizada>       }
{                                                                   }
{       Copyright (C) 200-2001 Open Systems ltd                     }
{       ALL RIGHTS RESERVED                                         }
{                                                                   }
{   The entire contents of this file is protected International     }
{   Copyright Laws. Unauthorized reproduction,                      }
{   reverse-engineering, and distribution of all or any portion of  }
{   the code contained in this file is strictly prohibited and may  }
{   result in severe civil and criminal penalties and will be       }
{   prosecuted to the maximum extent possible under the law.        }
{                                                                   }
{   RESTRICTIONS                                                    }
{                                                                   }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON       }
{   ADDITIONAL RESTRICTIONS.                                        }
{                                                                   }
{*******************************************************************}

{$WARN SYMBOL_PLATFORM OFF}

{********************************************************************************
@abstract(<Descripcion Corta de la Funcionalidad>)
@author(Nombre de Usuario Creador de la Clase)
@created(Fecha de Creacion de la Clase DD-MM-YYYY)
@lastmod(Fecha de Ultima modificacion de la Clase DD-MM-YYYY)


<Descripcion de la funcionalidad de la clase que se esta desarrollando y detalle
 de modificaciones que se la hagan a la misma>
********************************************************************************}

unit <NombreUnidad>;

interface

uses
    Windows, Classes, Controls, Forms, Messages;

type
    {*********************************************************}
    {    Declaracion de Variables y Procedimientos privados   }
    {*********************************************************}
    private
        Variable1: <TipoDato>;
	Variable2: <TipoDato>;
	Variable3: <TipoDato>;
	     .
	     .
	     .
	VariableN: TipoDato;

	procedure <NombrePorcedure1>(Value: <TipoDato>);
	procedure <NombrePorcedure2>(Value: <TipoDato>);
	procedure <NombrePorcedure3>(Value: <TipoDato>);
	    .
	    .
	    .
	procedure <NombrePorcedureN>(Value: <TipoDato>);
    {*********************************************************}
    {    Declaracion de Variables y Procedimientos Protected  }
    {*********************************************************}
    protected
        Variable1: <TipoDato>;
	Variable2: <TipoDato>;
	Variable3: <TipoDato>;
	     .
	     .
	     .
	VariableN: <TipoDato>;

	procedure <NombrePorcedure1>(Value: <TipoDato>); virtual;
	procedure <NombrePorcedure2>(Value: <TipoDato>);
	procedure <NombrePorcedure3>(Value: <TipoDato>);
	    .
	    .
	    .
	procedure <NombrePorcedureN>(Value: <TipoDato>);

        function <NombreFunction1>(<Parametro1>: <TipoDato>; <Parametro2>: <TipoDato>; <ParametroN>: <TipoDato>): <TipoDatoRetorno>;
        function <NombreFunction2>: <TipoDatoRetorno>;
    {*********************************************************}
    {    Declaracion de Variables y Procedimientos Publicos   }
    {*********************************************************}
    public
        {***************************************} 
	{       Constructor del objeto          }
        {***************************************} 
        constructor Create(<NombreVariableOwner>: TComponent); override;
        {***************************************} 
	{       Destructor del objeto           }
        {***************************************} 
        destructor Destroy; override;
        { Ejecuta la ayuda en el archivo especificado }
        procedure RunHelp(AFileName: string = '');
    published
    	{***************************************}
	{      Declaracion de Propiedades       }
    	{***************************************}
	property <NombrePropiedad1>: <TipoDato> read <Nombre Variable o Funcion> write <Nombre Variable o Funcion> default <DefaultValue>;
	property <NombrePropiedad2>: <TipoDato> read <Nombre Variable o Funcion> write <Nombre Variable o Funcion>; 
	           .
		   .
		   .
	property <NombrePropiedadN>: <TipoDato> read <Nombre Variable o Funcion> write <Nombre Variable o Funcion>;
    end;

{***************************************************************}
{    Implementacion de Procedimiento y Funciones de la Clase    }
{***************************************************************}
implementation

uses
    Dialogs, Registry, SysUtils, ShellApi, CustomErrors, Menus, CustomDialogs,
    RegisterUtil;

{*************************************************}
{   Implementacion del Constructor de la Clase    }
{*************************************************}
constructor <NombreClase>.Create(<NomberVariableOwner>: TComponent);
begin
	{Desarrollo}
end;

{*************************************************}
{    Implementacion del Destructor de la Clase    }
{*************************************************}
destructor <NombreClase>.Destroy;
begin
	{Desarrollo}
end;

{*************************************************}
{      Implementacion de Procedimientos y         }
{          funciones de la Clase                  }
{*************************************************}
procedure <NombreClase>.<Procedure1>(<Param1>: <TipoDato>);
begin
	{Desarrollo}
end;

function <NombreClase>.<Function1>: <TipoDatoRetorno>;
begin
	{Desarrollo}
end;

procedure <NombreClase>.<Procedure1>(<Param1>: <TipoDato>);
var
	{Declaracion de Variables del Procedimiento}
begin
	{Deasarrollo}
end;

end.
