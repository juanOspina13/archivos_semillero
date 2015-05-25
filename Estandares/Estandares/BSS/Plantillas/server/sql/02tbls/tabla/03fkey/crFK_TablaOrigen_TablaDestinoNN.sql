/******************************************************************
  Propiedad intelectual de Open International Systems Copyright 2002
  Archivo     crFK_<TablaOrigen>_<TablaDestino><NN>.sql
  Autor       Nombre del Desarrollador
  Fecha       Fecha de Modificacion dd-MM-YYYY

  Descripción    Creacion de llave foranea tabla <TablaOrigen>
  Observaciones

  Historia de Modificaciones
  Fecha             Autor                  Modificación
  DD-MM-YYYY        Autor<SAONNNN>
***************************************************************** */

PROMPT - Script  :  crFK_<TablaOrigen>_<TablaDestino><NN>.sql
PROMPT - Autor  :  <Nombre Apellido del Autor>
PROMPT
PROMPT - Adicionando llave foranea FK_<TablaOrigen>_<TablaDestino><NN> a la tabla <TablaOrigen>

ALTER TABLE <TablaOrigen> ADD
    (
        CONSTRAINT FK_<TablaOrigen>_<TablaDestino><NN>
        FOREIGN KEY ( campo1, campoN )
        REFERENCES <TablaDestino> ( campo1, campoN )
    )
/
