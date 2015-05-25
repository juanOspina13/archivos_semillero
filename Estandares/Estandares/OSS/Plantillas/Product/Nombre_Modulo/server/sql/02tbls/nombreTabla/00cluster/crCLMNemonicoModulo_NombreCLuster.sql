/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     crCL<MNemonicoModulo>_<NombreCLuster>.sql
  Autor       <Nombre del Desarrollador que hace la entrega>
  Fecha       DD-MM-YYYY

  Descripción    <Breve Descripcion de la funcionalidad>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAOXXXX>

***************************************************************** */

Prompt   script   :  crCL<MNemonicoModulo>_<NombreCLuster>.sql
Prompt   author   :  <Nombre del Desarrollador que hace la entrega>
Prompt
Prompt   Creating CLUSTER CL<MNemonicoModulo>_<NombreCLuster>

 create cluster  CL<MNemonicoModulo>_<NombreCLuster>
   (
        CAMPO1              TIPODATO(TAMANO),
        CAMPO2              TIPODATO(TAMANO),
           .
           .
           .
        CAMPON              TIPODATO(TAMANO)
   )
   pctused      ##
   pctfree      ##
   tablespace   <NOMBRE_TABLESPACE>
   STORAGE
   (
       INITIAL          ##[K, M, G]
       NEXT             ##[K, M, G]
       MINEXTENTS       #
       MAXEXTENTS       ###
       BUFFER_POOL      [DEFAULT, KEEP]
       PCTINCREASE      #
   )
   SIZE         #
   SINGLE TABLE
   HASHKEYS     #
;
