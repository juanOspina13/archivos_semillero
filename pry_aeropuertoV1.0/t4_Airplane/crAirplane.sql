/*
 Propiedad intelectual de OPEN International Systems Ltda

 Archivo       : crAirplane.sql
Autor         : Juan ospina
Fecha         : <28-02-2015> ( Fecha creaci�n )

 Descripci�n   : Creaci�n de la tabla Avi�n
Observaciones : 
Historia de Modificaciones
Fecha          IDEntrega
02-03-2014    <Autor>SAONNNNN
Modificacion

*/ 

CREATE TABLE airplane (
    sbId varchar2(256)  NOT NULL,
    sbDescription varchar2(256)  NOT NULL,
    sbPlaneSizeId varchar2(256)  NOT NULL,
    sbNotes varchar2(1024) NOT NULL,
    sbAirplineModeId varchar2(256)  NOT NULL,
    sbAirlineId varchar2(256)  NOT NULL
  ) ;
