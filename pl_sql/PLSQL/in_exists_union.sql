/*1)QUERY IN*/
SELECT ge_items.description descripcion,ge_items_gama_item.id_items_gama gama_item,warranty_days dias_garantia
FROM ge_items,ge_items_gama_item
WHERE ge_items.id_items_tipo IN
( SELECT id_items_tipo
        FROM ge_items_tipo
        WHERE id_items_tipo IN (20)  --medidor de gas
)
AND ge_items_gama_item.items_id=ge_items.items_id
/

/*con tablas mencionadas*/
SELECT banco.bancnomb FROM banco WHERE banccodi IN (
        SELECT suscbanc FROM suscripc  WHERE SUSCCLIE IS NOT NULL --suscriptor no este vacio
)
/
/*2)QUERY EXISTS*/

SELECT ge_items.description
FROM ge_items
WHERE EXISTS(SELECT MEASURE_UNIT_ID
            FROM ge_measure_unit
            WHERE MEASURE_UNIT_ID in(5)  -- unidades(5),40(no existe)
);
/

/*con tablas mencionadas*/
SELECT * FROM  pr_product
WHERE EXISTS(
    SELECT * FROM servicio WHERE servdesc in('Utilities')
)

/

/* 3) QUERY UNION ALL*/
SELECT 'cantidad de productos', count(product_id)  FROM pr_product  UNION ALL SELECT 'cantidad de suscriptores', count(subscriber_id)  FROM ge_subscriber ;
