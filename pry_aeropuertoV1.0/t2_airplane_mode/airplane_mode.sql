/*
 Propiedad intelectual de OPEN International Systems Ltda

 Archivo       : crAirplane_mode.sql
Autor         : Juan ospina
Fecha         : <28-02-2015> ( Fecha creaci�n )

 Descripci�n   : Creaci�n de la tabla modalidades del avi�n
Observaciones : 
Historia de Modificaciones
Fecha          IDEntrega
02-03-2014    <Autor>SAONNNNN
Modificacion

*/ 
CREATE TABLE airplane_mode (
    sbId varchar2(256)  NOT NULL,
    sbDescription varchar2(256)  NOT NULL,
    sbNotes varchar2(1024)   NOT NULL
) ;

