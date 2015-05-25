/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2001
  Archivo     crCK<NombreCortoTabla>_<NombreCampo>.sql
  Autor       Nombre del Desarrollador
  Fecha       DD-MM-YYYY HH24:MI:SS

  Descripción
  Observaciones

  Historia de Modificaciones
  Fecha             Autor               Modificación
  DD-MM-YYYY        Autor<SAONNNN>      Descripcion de la Modificacion

******************************************************************/

PROMPT    Script  : crCK<NombreCortoTabla>_<NombreCampo>.sql
PROMPT    Author  : Nombre del Desarrollador
PROMPT
PROMPT    Creating Check Constraint CK<NombreCortoTabla>_<NombreCampo> on <NombreTabla>

ALTER TABLE <NombreTabla>
  ADD CONSTRAINT CK<NombreCortoTabla>_<NombreCampo>
CHECK(<NombreCampo> <condicion>)
/