--Mensaje antes de insertar
CREATE OR REPLACE TRIGGER juan_after_insert
AFTER INSERT ON cliente_juanm
DECLARE
 vMsg VARCHAR2(30) := 'Trigger msg: ';
BEGIN
  IF INSERTING THEN
    dbms_output.put_line(vMsg || ' lanza el trigger depsues de insertar');
  END IF;
END statement_level;


/
INSERT INTO cliente_juanm (cedula, nombre, apellido, direccion, fecha_ingreso) values(500, 'Juan', 'Ospina','cll 2 #24-12', '01/01/2015');
/
--mensaje despues de insertar
CREATE OR REPLACE TRIGGER juan_before_insert
BEFORE INSERT ON cliente_juanm
DECLARE
 vMsg VARCHAR2(30) := 'Trigger msg: ';
BEGIN
  IF INSERTING THEN
    dbms_output.put_line(vMsg || ' lanza el trigger antes de insertar');
  END IF;
END statement_level;




/
--inserta en una tabla aux con el nombre viejo del UPDATE. AFTER UPD
CREATE OR REPLACE TRIGGER juan_after_upd
AFTER UPDATE
ON cliente_juanm
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
 vMsg VARCHAR2(30) := 'Trigger msg: ';
BEGIN
dbms_output.put_line(vMsg || ' Trigger after upd');
     INSERT INTO aux_juan VALUES (1, :new.nombre,'prueba_triggers_after' );
END juan_after_upd;
/
UPDATE cliente_juanm SET nombre='juann' WHERE nombre='Jose' ;
/
INSERT INTO aux_juan1 VALUES(1,'Jose','asda');
/
--inserta en una tabla aux con el nombre viejo del UPDATE. AFTER UPD
CREATE OR REPLACE TRIGGER juan_before_upd
BEFORE UPDATE
ON aux_juan1
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
 vMsg VARCHAR2(30) := 'Trigger msg: ';
BEGIN
dbms_output.put_line(vMsg || ' Trigger before upd');

     INSERT INTO aux_juan VALUES (1, :new.nombre,'prueba_triggers_before' );
END juan_before_upd;
/
UPDATE aux_juan1 SET nombre='juann' WHERE nombre='Jose' ;

/
UPDATE cliente_juanm SET nombre='juann' WHERE nombre='Jose' ;
/
CREATE TABLE aux_juan1
( id number(10) not null,
  nombre varchar2(50) not null,
  nota varchar2(50)
);
/
-- Mensaje antes del DELETE

CREATE OR REPLACE TRIGGER juan_before_delete
BEFORE DELETE
   ON cliente_juanm
   FOR EACH ROW

BEGIN
   -- Insert record into audit table
   INSERT INTO juan_audit
   aux_juan VALUES (1, 'aux','borro_registro',	CURRENT_DATE );

END;
/
DELETE cliente_juanm WHERE nombre='juann';
/

CREATE TABLE juan_audit
( id number(10) not null,
  nombre varchar2(50) not null,
  nota varchar2(50),
  fecha date
);