--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crTRGAIR_FACTINCON_JO.sql
-- Autor         : Juan Ospina
-- Fecha         : <28-02-2015 12:00:00>

-- Descripción   : trigger para llevar el control de auditorias
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-03-2014    <Autor>SAONNNNN
-- Modificacion
--
CREATE OR REPLACE TRIGGER TRGAIR_FACTINCON_JO
    AFTER INSERT ON JO_FACTURA
    FOR EACH ROW
DECLARE
    CURSOR cuCotizaci IS
    SELECT * FROM JO_cotizaci
    WHERE JO_cotizaci.coticodi = :new.faccotco;

    rcCotizaci JO_cotizaci%rowtype;

BEGIN
    if(cuCotizaci%isOpen)then
        close cuCotizaci;
    END if;

    OPEN cuCotizaci;
    FETCH cuCotizaci INTO rcCotizaci;
    CLOSE cuCotizaci;

    dbms_output.put_line(' fecha factura: '||:new.factfege);
    dbms_output.put_line(' fecha cotizaci: '|| rcCotizaci.cotifeve);

    if(:new.factfege > rcCotizaci.cotifeve) then
        /*INSERT into JO_incolog (
            inlousua,
            inloterm,
            inlofech,
            inlocoti,
            inlofact
        )
        VALUES(
            rcCotizaci.cotiveco,
            SYS_CONTEXT('USERENV','OS_USER'),
            SYSDATE,
            rcCotizaci.coticodi,
            :new.factcodi
        );   */

        dbms_output.put_line(' fecha mayor ');
    END if;

EXCEPTION
    when others then
        dbms_output.put_line(sqlerrm);
        dbms_output.put_line(sqlcode);

END;


