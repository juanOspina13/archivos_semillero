CREATE TABLE juanm_1( id number, descuento varchar2(200));
/
SELECT * FROM juanm_1;
/
BEGIN
    SE_BO_Funcionalidad_jmo.drop_table('juanm_1');
END;
/
CREATE TABLE jmo_ge_subscriber AS
  SELECT * FROM ge_subscriber
/
SELECT  identification FROM  jmo_ge_subscriber;
/
UPDATE jmo_ge_subscriber SET identification=11;
/
BEGIN
    SE_BO_Funcionalidad_jmo.cambiar_identificacion(5,4);
END;
/
PROCEDURE drop_table(nombre_table IN VARCHAR2)     --ejemplo del dbms_sql
IS
   cur PLS_INTEGER := DBMS_SQL.OPEN_CURSOR;
   fdbk PLS_INTEGER;
BEGIN
   dbms_output.put_line('Elimino la tabla->'|| ' ' || nombre_table||' con exito');
   DBMS_SQL.PARSE(cur, 'DROP table'|| ' ' || nombre_table, DBMS_SQL.NATIVE);
   EXCEPTION when OTHERS
    then dbms_output.put_line('Exc. Others');
   fdbk := DBMS_SQL.EXECUTE (cur);
   DBMS_SQL.CLOSE_CURSOR (cur);
END drop_table;
/
PROCEDURE get_subscribers_ref(isbIdenti in ge_subscriber.subscriber_type_id%type,p_recordset OUT SYS_REFCURSOR) --ejemplo de cursores referenciados
IS
BEGIN
  OPEN p_recordset FOR
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
    WHERE cliente.subscriber_type_id=isbIdenti;
END get_subscribers_ref;

/
PROCEDURE cambiar_identificacion(valor number,id_subs varchar2) IS
BEGIN
    EXECUTE IMMEDIATE 'UPDATE jmo_ge_subscriber SET identification = :x WHERE subscriber_id = :b'
    USING valor,id_subs;
END cambiar_identificacion;
