DECLARE
tbpl jo_bo_repocoti.tytbRepocoti;

BEGIN
    JO_BO_REPOCOTI.BO_REPORT_JO(
            TO_DATE('01/01/2006','DD/MM/YYYY'),
            TO_DATE('01/01/2020','DD/MM/YYYY')
        --    ,tbpl
        );
      --  dbms_output.put_Line(tbpl(1).sbnombvend);
END;