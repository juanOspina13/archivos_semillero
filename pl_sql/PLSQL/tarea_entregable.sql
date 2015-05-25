--
DECLARE
    TYPE Record_suscriptor IS RECORD    --declaracion del array
    (
        identification ge_subscriber.identification%type,                 --1  identification
        subscriber_name ge_subscriber.subscriber_name%type,               --2  subscriber_name
        subs_last_name ge_subscriber.subs_last_name%type,                 --3  subs_last_name
        address ge_subscriber.address%type,                               --4  address
        phone ge_subscriber.phone%type,                                   --5  phone
        active ge_subscriber.active%type,                                 --6  active
        IS_corporative ge_subscriber.IS_corporative%type,                 --7  IS_corporative
        management_account ge_subscriber.management_account%type,         --8  management_account
        e_mail ge_subscriber.e_mail%type,                                  --9  e_mail
        subs_status_id ge_subscriber.subs_status_id%type                  --10 subs_status_id

    );
    TYPE Record_suscriptores IS TABLE OF Record_suscriptor INDEX BY BINARY_INTEGER; -- creo el array
    tbrec_susc Record_suscriptores;
/
--CUERPO DEL PAQUETE
CREATE OR REPLACE PACKAGE BODY SE_BO_tablas_pl_jmo
IS
PROCEDURE PO_traer_info(
    isbIdenti in ge_subscriber.subscriber_type_id%type,     -- tipo del suscriptor
    record_subs out Record_suscriptor)
IS                                              --inicializo el array
CURSOR cusubscriber IS    ---cursor con los datos del cliente
    SELECT identification id,      --1.id
        subscriber_name nombre,    --2.nombre
        subs_last_name apellido,   --3.apellido
        address direccion,         --4.direccion
        phone telefono,            --5.telefono
        active activo,            --6.activo
        IS_corporative corporativo,--7.corporativo
        management_account,         --8.gestión de contabilidad
        e_mail email,               --9. email
        subs_status_id             --10. estado
    FROM ge_subscriber cliente
    WHERE cliente.subscriber_type_id=2;
BEGIN
IF(cusubscriber%isOpen)then
    close cusubscriber;
END if;

OPEN cusubscriber;                                          --abro el cursor
FETCH cusubscriber BULK COLLECT INTO record_subs;            --leo el cursor
/*for i in tbrec_susc.first..tbrec_susc.last                  --muestro con un for el contenido del arreglo
    loop
        if tbrec_susc.exists(i) then
            dbms_output.put_line('Codigo->'||tbrec_susc(i).subscriber_name);
        else
            dbms_output.put_line('Codigo->'||i||':no existe');
            END if;
    end loop;*/
CLOSE cusubscriber;

END ;
END SE_BO_tablas_pl_jmo;
/
--DECLARACION DEL PAQUETE
CREATE OR REPLACE PACKAGE SE_BO_tablas_pl_jmo
IS
  TYPE Record_suscriptor IS RECORD    --declaracion del array
    (
        identification ge_subscriber.identification%type,                 --1  identification
        subscriber_name ge_subscriber.subscriber_name%type,               --2  subscriber_name
        subs_last_name ge_subscriber.subs_last_name%type,                 --3  subs_last_name
        address ge_subscriber.address%type,                               --4  address
        phone ge_subscriber.phone%type,                                   --5  phone
        active ge_subscriber.active%type,                                 --6  active
        IS_corporative ge_subscriber.IS_corporative%type,                 --7  IS_corporative
        management_account ge_subscriber.management_account%type,         --8  management_account
        e_mail ge_subscriber.e_mail%type,                                  --9  e_mail
        subs_status_id ge_subscriber.subs_status_id%type                  --10 subs_status_id

    );
    TYPE Record_suscriptores IS TABLE OF Record_suscriptor INDEX BY BINARY_INTEGER; -- creo el array
    tbrec_susc Record_suscriptores;
PROCEDURE PO_traer_info(
    isbIdenti in ge_subscriber.subscriber_type_id%type,   --parametro tipo de subscriptor
    record_subs out Record_suscriptores)  ;

END SE_BO_tablas_pl_jmo;
/
-- llamado

DECLARE
tabla_pl  SE_BO_tablas_pl_jmo.Record_suscriptores ;

BEGIN

SE_BO_tablas_pl_jmo.PO_traer_info(2,tabla_pl);

for i in tabla_pl.first..tabla_pl.last                  --muestro con un for el contenido del arreglo
    loop
   -- dbms_output.put_line('Codigo->');
        if tabla_pl.exists(i) then
            dbms_output.put_line('Codigo->'||tabla_pl(i).subscriber_name);
        else
            dbms_output.put_line('Codigo->'||i||':no existe');
            END if;
    end loop;
END;