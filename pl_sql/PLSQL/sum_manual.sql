--DECLARO EL PAQUETE
CREATE OR REPLACE PACKAGE SE_BO_consumo_cliente
IS
TYPE Record_informacion IS RECORD    --declaracion del array
    (
           nombre ge_subscriber.subscriber_name%type ,
           identificacion ge_subscriber.identification%type ,
           descripcion_concepto concepto.concdesc%type ,
           id_concepto concepto.conccodi%type ,
           valor cargos.cargvalo%type
         );
    TYPE Record_informaciones IS TABLE OF Record_informacion INDEX BY BINARY_INTEGER; -- creo el array
    
TYPE totalizacion IS RECORD    --declaracion del array
    (
           nombre ge_subscriber.subscriber_name%type ,
           identificacion ge_subscriber.identification%type ,
           descripcion_concepto concepto.concdesc%type ,
           id_concepto concepto.conccodi%type ,
           valor_total cargos.cargvalo%type
         );
    TYPE totalizaciones IS TABLE OF totalizacion INDEX BY varchar(100); -- creo el array

PROCEDURE po_get_consumo_cliente(
    isbIdenti in ge_subscriber.subscriber_type_id%type,
    record_info out Record_informaciones);
END SE_BO_consumo_cliente;

/
--CUERPO DEL PAQUETE
CREATE OR REPLACE PACKAGE BODY SE_BO_consumo_cliente
IS
PROCEDURE po_get_consumo_cliente(
    isbIdenti in ge_subscriber.subscriber_type_id%type,
    record_info out Record_informaciones)
IS -- DECLARACION DEL CURSOR
CURSOR cuinfo IS    ---cursor con los datos del cliente

    SELECT  ge_subscriber.subscriber_name ,
            ge_subscriber.identification ,
            concepto.concdesc ,
            concepto.conccodi ,
            cargos.cargvalo

    FROM ge_subscriber,suscripc,pr_product,cargos,concepto
    WHERE suscripc.suscclie=ge_subscriber.subscriber_id
      AND pr_product.subscription_id=suscripc.susccodi
      AND cargos.cargnuse=pr_product.product_id
      AND cargos.cargconc=concepto.conccodi
;
 
BEGIN
    if(cuinfo%isOpen)then
        close cuinfo;
    END if;
    
    OPEN cuinfo;                                          --abro el cursor
    FETCH cuinfo BULK COLLECT INTO record_info;            --leo el CURSOR

    --dbms_output.put_line('trae '||cuinfo%rowcount||' registros');
    dbms_output.put_line('-----------------------------------------------------');
    CLOSE cuinfo;
END;
END SE_BO_consumo_cliente;
/
-- llamado al paquete
declare
    sbIdenti            ge_subscriber.subscriber_type_id%type;
     tbl SE_BO_consumo_cliente.Record_informaciones;
     totalizada SE_BO_consumo_cliente.totalizaciones;
     current_key varchar2(200);
     concatenacion varchar2(200);
BEGIN
     SE_BO_consumo_cliente.po_get_consumo_cliente(2,tbl);
    FOR i in tbl.first .. tbl.last LOOP
    concatenacion:=tbl(i).identificacion||''||tbl(i).id_concepto;

        totalizada(
            concatenacion
        ).valor_total:=0;
   END LOOP;
   FOR i in tbl.first .. tbl.last LOOP
       concatenacion:=tbl(i).identificacion||''||tbl(i).id_concepto;
         totalizada(
            concatenacion
        ).valor_total:=totalizada(
            concatenacion
        ).valor_total+tbl(i).valor; -- sumo valor
        totalizada(concatenacion).identificacion:=tbl(i).identificacion;
                totalizada(concatenacion).nombre:=tbl(i).nombre;
  totalizada(concatenacion).descripcion_concepto:=tbl(i).descripcion_concepto;
        totalizada(concatenacion).id_concepto:=tbl(i).id_concepto;
   END LOOP;
   
    current_key := totalizada.first;
     while not current_key is null loop
        dbms_output.put_line(' ID cliente: '||totalizada(current_key).identificacion||' Nombre:'||totalizada(current_key).nombre||' ID concepto:'||totalizada(current_key).id_concepto||' desc concepto:'||totalizada(current_key).descripcion_concepto||' valor total '||totalizada(current_key).valor_total);
        current_key := totalizada.next(current_key);
    end loop;



END;
/