CREATE OR REPLACE PACKAGE JO_DAO_VENDEDOR
IS

    PROCEDURE DAO_VENDEDOR_JO
        (
            inuVendcodi    in  JO_Vendedor.vendcodi%type,
            orcVendedor    out JO_Vendedor%rowtype
        );

END JO_DAO_VENDEDOR;
/
CREATE OR REPLACE PACKAGE BODY JO_DAO_VENDEDOR
IS
    PROCEDURE DAO_VENDEDOR_JO
        (
            inuVendcodi    in  JO_Vendedor.vendcodi%type,
            orcVendedor    out JO_Vendedor%rowtype
        )
        IS
        CURSOR cuJO_Vendedor
            IS
            SELECT *
            FROM JO_Vendedor
            WHERE vendcodi = inuVendcodi;

        BEGIN
            OPEN cuJO_Vendedor;
            FETCH cuJO_Vendedor INTO orcVendedor;
            CLOSE cuJO_Vendedor;
    END DAO_VENDEDOR_JO;

END JO_DAO_VENDEDOR;
/
