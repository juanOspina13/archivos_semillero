CREATE OR REPLACE PACKAGE JO_DAO_REPOCOTI
IS

    PROCEDURE DAO_REPOCOTI_JO
        (
            inuRecocons    in  JO_Repocoti.recocons%type,
            orcRepocoti    out JO_Repocoti%rowtype
        );

END JO_DAO_REPOCOTI;
/
CREATE OR REPLACE PACKAGE BODY JO_DAO_REPOCOTI
IS
    PROCEDURE DAO_REPOCOTI_JO
        (
            inuRecocons    in  JO_Repocoti.recocons%type,
            orcRepocoti    out JO_Repocoti%rowtype
        )
        IS
        CURSOR cuJO_Repocoti
            IS
            SELECT *
            FROM JP_Repocoti
            WHERE recocons = inuRecocons;

        BEGIN
            OPEN cuJO_Repocoti;
            FETCH cuJO_Repocoti INTO orcRepocoti;
            CLOSE cuJO_Repocoti;

    END DAO_REPOCOTI_JO;

END JO_DAO_REPOCOTI;
/