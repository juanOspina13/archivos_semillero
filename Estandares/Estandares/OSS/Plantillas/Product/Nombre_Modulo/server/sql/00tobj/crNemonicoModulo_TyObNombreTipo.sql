/* *****************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     <crNemonicoModulo_TyObNombreTipo.sql>
  Autor       <Desarrollador que hace la entrega>
  Fecha       DD-MM-YYYY

  Descripci�n     <Breve descripcion de la funcionalidad que se entrega>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificaci�n
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

Prompt   script   :  <crNemonicoModulo_TyObNombreTipo.sql>
Prompt   author   :  <Desarrollador que hace la entrega>
Prompt
Prompt   Crea objeto NemonicoModulo_TyObNombreTipo


create or replace  type <NemonicoModulo_TyObNombreTipo> as OBJECT
(
    CAMPO1          TIPODATO(##),
    CAMPO2          TIPODATO(##),
        .
        .
        .
    CAMPON          TIPODATO(##),
)
/